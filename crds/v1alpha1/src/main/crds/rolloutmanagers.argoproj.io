apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
  annotations:
    controller-gen.kubebuilder.io/version: v0.11.1
    operatorframework.io/installed-alongside-916b5c41539597da: openshift-gitops-operator/openshift-gitops-operator.v1.12.4
    operatorframework.io/installed-alongside-9ae07b41592a6095: openshift-gitops-operator/openshift-gitops-operator.v1.13.0
  creationTimestamp: "2024-06-25T14:20:07Z"
  generation: 2
  labels:
    olm.managed: "true"
    operators.coreos.com/openshift-gitops-operator.openshift-gitops-operator: ""
  name: rolloutmanagers.argoproj.io
  resourceVersion: "18541607"
  uid: 36095fd8-32f8-4735-a666-9d604bf41449
spec:
  conversion:
    strategy: None
  group: argoproj.io
  names:
    kind: RolloutManager
    listKind: RolloutManagerList
    plural: rolloutmanagers
    singular: rolloutmanager
  scope: Namespaced
  versions:
  - name: v1alpha1
    schema:
      openAPIV3Schema:
        description: RolloutManager is the Schema for the RolloutManagers API
        properties:
          apiVersion:
            description: 'APIVersion defines the versioned schema of this representation
              of an object. Servers should convert recognized schemas to the latest
              internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
            type: string
          kind:
            description: 'Kind is a string value representing the REST resource this
              object represents. Servers may infer this from the endpoint the client
              submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
            type: string
          metadata:
            type: object
          spec:
            description: RolloutManagerSpec defines the desired state of Argo Rollouts
            properties:
              additionalMetadata:
                description: Metadata to apply to the generated resources
                properties:
                  annotations:
                    additionalProperties:
                      type: string
                    description: Annotations to add to the resources during its creation.
                    type: object
                  labels:
                    additionalProperties:
                      type: string
                    description: Labels to add to the resources during its creation.
                    type: object
                type: object
              env:
                description: Env lets you specify environment for Rollouts pods
                items:
                  description: EnvVar represents an environment variable present in
                    a Container.
                  properties:
                    name:
                      description: Name of the environment variable. Must be a C_IDENTIFIER.
                      type: string
                    value:
                      description: 'Variable references $(VAR_NAME) are expanded using
                        the previously defined environment variables in the container
                        and any service environment variables. If a variable cannot
                        be resolved, the reference in the input string will be unchanged.
                        Double $$ are reduced to a single $, which allows for escaping
                        the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the
                        string literal "$(VAR_NAME)". Escaped references will never
                        be expanded, regardless of whether the variable exists or
                        not. Defaults to "".'
                      type: string
                    valueFrom:
                      description: Source for the environment variable's value. Cannot
                        be used if value is not empty.
                      properties:
                        configMapKeyRef:
                          description: Selects a key of a ConfigMap.
                          properties:
                            key:
                              description: The key to select.
                              type: string
                            name:
                              description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
                                TODO: Add other useful fields. apiVersion, kind, uid?'
                              type: string
                            optional:
                              description: Specify whether the ConfigMap or its key
                                must be defined
                              type: boolean
                          required:
                          - key
                          type: object
                          x-kubernetes-map-type: atomic
                        fieldRef:
                          description: 'Selects a field of the pod: supports metadata.name,
                            metadata.namespace, `metadata.labels[''<KEY>'']`, `metadata.annotations[''<KEY>'']`,
                            spec.nodeName, spec.serviceAccountName, status.hostIP,
                            status.podIP, status.podIPs.'
                          properties:
                            apiVersion:
                              description: Version of the schema the FieldPath is
                                written in terms of, defaults to "v1".
                              type: string
                            fieldPath:
                              description: Path of the field to select in the specified
                                API version.
                              type: string
                          required:
                          - fieldPath
                          type: object
                          x-kubernetes-map-type: atomic
                        resourceFieldRef:
                          description: 'Selects a resource of the container: only
                            resources limits and requests (limits.cpu, limits.memory,
                            limits.ephemeral-storage, requests.cpu, requests.memory
                            and requests.ephemeral-storage) are currently supported.'
                          properties:
                            containerName:
                              description: 'Container name: required for volumes,
                                optional for env vars'
                              type: string
                            divisor:
                              anyOf:
                              - type: integer
                              - type: string
                              description: Specifies the output format of the exposed
                                resources, defaults to "1"
                              pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
                              x-kubernetes-int-or-string: true
                            resource:
                              description: 'Required: resource to select'
                              type: string
                          required:
                          - resource
                          type: object
                          x-kubernetes-map-type: atomic
                        secretKeyRef:
                          description: Selects a key of a secret in the pod's namespace
                          properties:
                            key:
                              description: The key of the secret to select from.  Must
                                be a valid secret key.
                              type: string
                            name:
                              description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
                                TODO: Add other useful fields. apiVersion, kind, uid?'
                              type: string
                            optional:
                              description: Specify whether the Secret or its key must
                                be defined
                              type: boolean
                          required:
                          - key
                          type: object
                          x-kubernetes-map-type: atomic
                      type: object
                  required:
                  - name
                  type: object
                type: array
              extraCommandArgs:
                description: Extra Command arguments that would append to the Rollouts
                  ExtraCommandArgs will not be added, if one of these commands is
                  already part of the Rollouts command with same or different value.
                items:
                  type: string
                type: array
              image:
                description: Image defines Argo Rollouts controller image (optional)
                type: string
              namespaceScoped:
                description: NamespaceScoped lets you specify if RolloutManager has
                  to watch a namespace or the whole cluster
                type: boolean
              nodePlacement:
                description: NodePlacement defines NodeSelectors and Taints for Rollouts
                  workloads
                properties:
                  nodeSelector:
                    additionalProperties:
                      type: string
                    description: NodeSelector is a field of PodSpec, it is a map of
                      key value pairs used for node selection
                    type: object
                  tolerations:
                    description: Tolerations allow the pods to schedule onto nodes
                      with matching taints
                    items:
                      description: The pod this Toleration is attached to tolerates
                        any taint that matches the triple <key,value,effect> using
                        the matching operator <operator>.
                      properties:
                        effect:
                          description: Effect indicates the taint effect to match.
                            Empty means match all taint effects. When specified, allowed
                            values are NoSchedule, PreferNoSchedule and NoExecute.
                          type: string
                        key:
                          description: Key is the taint key that the toleration applies
                            to. Empty means match all taint keys. If the key is empty,
                            operator must be Exists; this combination means to match
                            all values and all keys.
                          type: string
                        operator:
                          description: Operator represents a key's relationship to
                            the value. Valid operators are Exists and Equal. Defaults
                            to Equal. Exists is equivalent to wildcard for value,
                            so that a pod can tolerate all taints of a particular
                            category.
                          type: string
                        tolerationSeconds:
                          description: TolerationSeconds represents the period of
                            time the toleration (which must be of effect NoExecute,
                            otherwise this field is ignored) tolerates the taint.
                            By default, it is not set, which means tolerate the taint
                            forever (do not evict). Zero and negative values will
                            be treated as 0 (evict immediately) by the system.
                          format: int64
                          type: integer
                        value:
                          description: Value is the taint value the toleration matches
                            to. If the operator is Exists, the value should be empty,
                            otherwise just a regular string.
                          type: string
                      type: object
                    type: array
                type: object
              version:
                description: Version defines Argo Rollouts controller tag (optional)
                type: string
            type: object
          status:
            description: RolloutManagerStatus defines the observed state of RolloutManager
            properties:
              conditions:
                description: Conditions is an array of the RolloutManager's status
                  conditions
                items:
                  description: "Condition contains details for one aspect of the current
                    state of this API Resource. --- This struct is intended for direct
                    use as an array at the field path .status.conditions.  For example,
                    \n type FooStatus struct{ // Represents the observations of a
                    foo's current state. // Known .status.conditions.type are: \"Available\",
                    \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
                    // +listType=map // +listMapKey=type Conditions []metav1.Condition
                    `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
                    protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
                  properties:
                    lastTransitionTime:
                      description: lastTransitionTime is the last time the condition
                        transitioned from one status to another. This should be when
                        the underlying condition changed.  If that is not known, then
                        using the time when the API field changed is acceptable.
                      format: date-time
                      type: string
                    message:
                      description: message is a human readable message indicating
                        details about the transition. This may be an empty string.
                      maxLength: 32768
                      type: string
                    observedGeneration:
                      description: observedGeneration represents the .metadata.generation
                        that the condition was set based upon. For instance, if .metadata.generation
                        is currently 12, but the .status.conditions[x].observedGeneration
                        is 9, the condition is out of date with respect to the current
                        state of the instance.
                      format: int64
                      minimum: 0
                      type: integer
                    reason:
                      description: reason contains a programmatic identifier indicating
                        the reason for the condition's last transition. Producers
                        of specific condition types may define expected values and
                        meanings for this field, and whether the values are considered
                        a guaranteed API. The value should be a CamelCase string.
                        This field may not be empty.
                      maxLength: 1024
                      minLength: 1
                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
                      type: string
                    status:
                      description: status of the condition, one of True, False, Unknown.
                      enum:
                      - "True"
                      - "False"
                      - Unknown
                      type: string
                    type:
                      description: type of condition in CamelCase or in foo.example.com/CamelCase.
                        --- Many .condition.type values are consistent across resources
                        like Available, but because arbitrary conditions can be useful
                        (see .node.status.conditions), the ability to deconflict is
                        important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
                      maxLength: 316
                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
                      type: string
                  required:
                  - lastTransitionTime
                  - message
                  - reason
                  - status
                  - type
                  type: object
                type: array
              phase:
                description: 'Phase is a simple, high-level summary of where the RolloutManager
                  is in its lifecycle. There are three possible phase values: Pending:
                  The RolloutManager has been accepted by the Kubernetes system, but
                  one or more of the required resources have not been created. Available:
                  All of the resources for the RolloutManager are ready. Unknown:
                  The state of the RolloutManager phase could not be obtained.'
                type: string
              rolloutController:
                description: 'RolloutController is a simple, high-level summary of
                  where the RolloutController component is in its lifecycle. There
                  are three possible RolloutController values: Pending: The RolloutController
                  component has been accepted by the Kubernetes system, but one or
                  more of the required resources have not been created. Running: All
                  of the required Pods for the RolloutController component are in
                  a Ready state. Unknown: The state of the RolloutController component
                  could not be obtained.'
                type: string
            type: object
        type: object
    served: true
    storage: true
    subresources:
      status: {}
status:
  acceptedNames:
    kind: RolloutManager
    listKind: RolloutManagerList
    plural: rolloutmanagers
    singular: rolloutmanager
  conditions:
  - lastTransitionTime: "2024-06-25T14:20:08Z"
    message: no conflicts found
    reason: NoConflicts
    status: "True"
    type: NamesAccepted
  - lastTransitionTime: "2024-06-25T14:20:08Z"
    message: the initial names have been accepted
    reason: InitialNamesAccepted
    status: "True"
    type: Established
  storedVersions:
  - v1alpha1
