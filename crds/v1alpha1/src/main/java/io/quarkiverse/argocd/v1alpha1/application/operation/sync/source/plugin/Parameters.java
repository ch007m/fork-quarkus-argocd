package io.quarkiverse.argocd.v1alpha1.application.operation.sync.source.plugin;

@com.fasterxml.jackson.annotation.JsonInclude(com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL)
@com.fasterxml.jackson.annotation.JsonPropertyOrder({ "array", "map", "name", "string" })
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
public class Parameters implements io.fabric8.kubernetes.api.builder.Editable<ParametersBuilder>,
        io.fabric8.kubernetes.api.model.KubernetesResource {

    @java.lang.Override
    public ParametersBuilder edit() {
        return new ParametersBuilder(this);
    }

    /**
     * Array is the value of an array type parameter.
     */
    @com.fasterxml.jackson.annotation.JsonProperty("array")
    @com.fasterxml.jackson.annotation.JsonPropertyDescription("Array is the value of an array type parameter.")
    @com.fasterxml.jackson.annotation.JsonSetter(nulls = com.fasterxml.jackson.annotation.Nulls.SKIP)
    private java.util.List<String> array;

    public java.util.List<String> getArray() {
        return array;
    }

    public void setArray(java.util.List<String> array) {
        this.array = array;
    }

    /**
     * Map is the value of a map type parameter.
     */
    @com.fasterxml.jackson.annotation.JsonProperty("map")
    @com.fasterxml.jackson.annotation.JsonPropertyDescription("Map is the value of a map type parameter.")
    @com.fasterxml.jackson.annotation.JsonSetter(nulls = com.fasterxml.jackson.annotation.Nulls.SKIP)
    private java.util.Map<java.lang.String, String> map;

    public java.util.Map<java.lang.String, String> getMap() {
        return map;
    }

    public void setMap(java.util.Map<java.lang.String, String> map) {
        this.map = map;
    }

    /**
     * Name is the name identifying a parameter.
     */
    @com.fasterxml.jackson.annotation.JsonProperty("name")
    @com.fasterxml.jackson.annotation.JsonPropertyDescription("Name is the name identifying a parameter.")
    @com.fasterxml.jackson.annotation.JsonSetter(nulls = com.fasterxml.jackson.annotation.Nulls.SKIP)
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * String_ is the value of a string type parameter.
     */
    @com.fasterxml.jackson.annotation.JsonProperty("string")
    @com.fasterxml.jackson.annotation.JsonPropertyDescription("String_ is the value of a string type parameter.")
    @com.fasterxml.jackson.annotation.JsonSetter(nulls = com.fasterxml.jackson.annotation.Nulls.SKIP)
    private String string;

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }
}
