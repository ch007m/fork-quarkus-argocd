package io.quarkiverse.argocd.deployment.devservices;

import java.util.Map;

import org.jboss.logging.Logger;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.containers.wait.strategy.Wait;
import org.testcontainers.utility.DockerImageName;

import io.quarkus.deployment.IsNormal;
import io.quarkus.deployment.annotations.BuildStep;
import io.quarkus.deployment.builditem.DevServicesResultBuildItem;
import io.quarkus.deployment.dev.devservices.DevServicesConfig;

public class ArgoCDDevServiceProcessor {
    private static final Logger LOG = Logger.getLogger(ArgoCDDevServiceProcessor.class);
    private static final int SERVICE_PORT = 8000;
    private static final String FEATURE = "HelloWorld";

    @BuildStep(onlyIfNot = IsNormal.class, onlyIf = DevServicesConfig.Enabled.class)
    public DevServicesResultBuildItem createContainer() {
        DockerImageName dockerImageName = DockerImageName.parse("crccheck/hello-world");
        GenericContainer container = new GenericContainer<>(dockerImageName)
                .withExposedPorts(SERVICE_PORT)
                .waitingFor(Wait.forLogMessage(".*" + "httpd" + ".*", 1))
                .withReuse(true);
        container.start();

        String newUrl = "http://" + container.getHost() + ":" + container.getMappedPort(SERVICE_PORT);
        Map<String, String> configOverrides = Map.of("hello-world.base-url", newUrl);

        LOG.info("The Hello World service is available at the url: " + newUrl);

        return new DevServicesResultBuildItem.RunningDevService(FEATURE, container.getContainerId(),
                container::close, configOverrides)
                .toBuildItem();
    }
}
