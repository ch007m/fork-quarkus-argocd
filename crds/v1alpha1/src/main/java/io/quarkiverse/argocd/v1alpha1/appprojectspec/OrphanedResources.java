package io.quarkiverse.argocd.v1alpha1.appprojectspec;

@com.fasterxml.jackson.annotation.JsonInclude(com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL)
@com.fasterxml.jackson.annotation.JsonPropertyOrder({ "ignore", "warn" })
@com.fasterxml.jackson.databind.annotation.JsonDeserialize(using = com.fasterxml.jackson.databind.JsonDeserializer.None.class)
@lombok.ToString()
@lombok.EqualsAndHashCode()
@io.sundr.builder.annotations.Buildable(editableEnabled = false, validationEnabled = false, generateBuilderPackage = false, builderPackage = "io.fabric8.kubernetes.api.builder", refs = {
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.ObjectMeta.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.ObjectReference.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.LabelSelector.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.Container.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.EnvVar.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.ContainerPort.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.Volume.class),
        @io.sundr.builder.annotations.BuildableReference(io.fabric8.kubernetes.api.model.VolumeMount.class)
})
public class OrphanedResources implements io.fabric8.kubernetes.api.builder.Editable<OrphanedResourcesBuilder>,
        io.fabric8.kubernetes.api.model.KubernetesResource {

    @java.lang.Override
    public OrphanedResourcesBuilder edit() {
        return new OrphanedResourcesBuilder(this);
    }

    /**
     * Ignore contains a list of resources that are to be excluded from orphaned resources monitoring
     */
    @com.fasterxml.jackson.annotation.JsonProperty("ignore")
    @com.fasterxml.jackson.annotation.JsonPropertyDescription("Ignore contains a list of resources that are to be excluded from orphaned resources monitoring")
    @com.fasterxml.jackson.annotation.JsonSetter(nulls = com.fasterxml.jackson.annotation.Nulls.SKIP)
    private java.util.List<io.quarkiverse.argocd.v1alpha1.appprojectspec.orphanedresources.Ignore> ignore;

    public java.util.List<io.quarkiverse.argocd.v1alpha1.appprojectspec.orphanedresources.Ignore> getIgnore() {
        return ignore;
    }

    public void setIgnore(java.util.List<io.quarkiverse.argocd.v1alpha1.appprojectspec.orphanedresources.Ignore> ignore) {
        this.ignore = ignore;
    }

    /**
     * Warn indicates if warning condition should be created for apps which have orphaned resources
     */
    @com.fasterxml.jackson.annotation.JsonProperty("warn")
    @com.fasterxml.jackson.annotation.JsonPropertyDescription("Warn indicates if warning condition should be created for apps which have orphaned resources")
    @com.fasterxml.jackson.annotation.JsonSetter(nulls = com.fasterxml.jackson.annotation.Nulls.SKIP)
    private Boolean warn;

    public Boolean getWarn() {
        return warn;
    }

    public void setWarn(Boolean warn) {
        this.warn = warn;
    }
}
