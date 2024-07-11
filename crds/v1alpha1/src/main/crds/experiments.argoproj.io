apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
  annotations:
    controller-gen.kubebuilder.io/version: v0.12.1
    operatorframework.io/installed-alongside-916b5c41539597da: openshift-gitops-operator/openshift-gitops-operator.v1.12.4
    operatorframework.io/installed-alongside-9ae07b41592a6095: openshift-gitops-operator/openshift-gitops-operator.v1.13.0
  creationTimestamp: "2024-06-25T14:20:06Z"
  generation: 1
  labels:
    olm.managed: "true"
    operators.coreos.com/openshift-gitops-operator.openshift-gitops-operator: ""
  name: experiments.argoproj.io
  resourceVersion: "18541714"
  uid: 1f367ad3-f0f0-4b4b-b92d-73a53de7950a
spec:
  conversion:
    strategy: None
  group: argoproj.io
  names:
    kind: Experiment
    listKind: ExperimentList
    plural: experiments
    shortNames:
    - exp
    singular: experiment
  scope: Namespaced
  versions:
  - additionalPrinterColumns:
    - description: Experiment status
      jsonPath: .status.phase
      name: Status
      type: string
    - description: Time since resource was created
      jsonPath: .metadata.creationTimestamp
      name: Age
      type: date
    name: v1alpha1
    schema:
      openAPIV3Schema:
        properties:
          apiVersion:
            type: string
          kind:
            type: string
          metadata:
            type: object
          spec:
            properties:
              analyses:
                items:
                  properties:
                    args:
                      items:
                        properties:
                          name:
                            type: string
                          value:
                            type: string
                          valueFrom:
                            properties:
                              fieldRef:
                                properties:
                                  fieldPath:
                                    type: string
                                required:
                                - fieldPath
                                type: object
                              secretKeyRef:
                                properties:
                                  key:
                                    type: string
                                  name:
                                    type: string
                                required:
                                - key
                                - name
                                type: object
                            type: object
                        required:
                        - name
                        type: object
                      type: array
                    clusterScope:
                      type: boolean
                    name:
                      type: string
                    requiredForCompletion:
                      type: boolean
                    templateName:
                      type: string
                  required:
                  - name
                  - templateName
                  type: object
                type: array
              dryRun:
                items:
                  properties:
                    metricName:
                      type: string
                  required:
                  - metricName
                  type: object
                type: array
              duration:
                type: string
              measurementRetention:
                items:
                  properties:
                    limit:
                      format: int32
                      type: integer
                    metricName:
                      type: string
                  required:
                  - limit
                  - metricName
                  type: object
                type: array
              progressDeadlineSeconds:
                format: int32
                type: integer
              scaleDownDelaySeconds:
                format: int32
                type: integer
              templates:
                items:
                  properties:
                    minReadySeconds:
                      format: int32
                      type: integer
                    name:
                      type: string
                    replicas:
                      format: int32
                      type: integer
                    selector:
                      properties:
                        matchExpressions:
                          items:
                            properties:
                              key:
                                type: string
                              operator:
                                type: string
                              values:
                                items:
                                  type: string
                                type: array
                            required:
                            - key
                            - operator
                            type: object
                          type: array
                        matchLabels:
                          additionalProperties:
                            type: string
                          type: object
                      type: object
                      x-kubernetes-map-type: atomic
                    service:
                      properties:
                        name:
                          type: string
                      type: object
                    template:
                      properties:
                        metadata:
                          properties:
                            annotations:
                              additionalProperties:
                                type: string
                              type: object
                            labels:
                              additionalProperties:
                                type: string
                              type: object
                          type: object
                        spec:
                          properties:
                            activeDeadlineSeconds:
                              format: int64
                              type: integer
                            affinity:
                              properties:
                                nodeAffinity:
                                  properties:
                                    preferredDuringSchedulingIgnoredDuringExecution:
                                      items:
                                        properties:
                                          preference:
                                            properties:
                                              matchExpressions:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                              matchFields:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                            type: object
                                            x-kubernetes-map-type: atomic
                                          weight:
                                            format: int32
                                            type: integer
                                        required:
                                        - preference
                                        - weight
                                        type: object
                                      type: array
                                    requiredDuringSchedulingIgnoredDuringExecution:
                                      properties:
                                        nodeSelectorTerms:
                                          items:
                                            properties:
                                              matchExpressions:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                              matchFields:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                            type: object
                                            x-kubernetes-map-type: atomic
                                          type: array
                                      required:
                                      - nodeSelectorTerms
                                      type: object
                                      x-kubernetes-map-type: atomic
                                  type: object
                                podAffinity:
                                  properties:
                                    preferredDuringSchedulingIgnoredDuringExecution:
                                      items:
                                        properties:
                                          podAffinityTerm:
                                            properties:
                                              labelSelector:
                                                properties:
                                                  matchExpressions:
                                                    items:
                                                      properties:
                                                        key:
                                                          type: string
                                                        operator:
                                                          type: string
                                                        values:
                                                          items:
                                                            type: string
                                                          type: array
                                                      required:
                                                      - key
                                                      - operator
                                                      type: object
                                                    type: array
                                                  matchLabels:
                                                    additionalProperties:
                                                      type: string
                                                    type: object
                                                type: object
                                                x-kubernetes-map-type: atomic
                                              namespaceSelector:
                                                properties:
                                                  matchExpressions:
                                                    items:
                                                      properties:
                                                        key:
                                                          type: string
                                                        operator:
                                                          type: string
                                                        values:
                                                          items:
                                                            type: string
                                                          type: array
                                                      required:
                                                      - key
                                                      - operator
                                                      type: object
                                                    type: array
                                                  matchLabels:
                                                    additionalProperties:
                                                      type: string
                                                    type: object
                                                type: object
                                                x-kubernetes-map-type: atomic
                                              namespaces:
                                                items:
                                                  type: string
                                                type: array
                                              topologyKey:
                                                type: string
                                            required:
                                            - topologyKey
                                            type: object
                                          weight:
                                            format: int32
                                            type: integer
                                        required:
                                        - podAffinityTerm
                                        - weight
                                        type: object
                                      type: array
                                    requiredDuringSchedulingIgnoredDuringExecution:
                                      items:
                                        properties:
                                          labelSelector:
                                            properties:
                                              matchExpressions:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                              matchLabels:
                                                additionalProperties:
                                                  type: string
                                                type: object
                                            type: object
                                            x-kubernetes-map-type: atomic
                                          namespaceSelector:
                                            properties:
                                              matchExpressions:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                              matchLabels:
                                                additionalProperties:
                                                  type: string
                                                type: object
                                            type: object
                                            x-kubernetes-map-type: atomic
                                          namespaces:
                                            items:
                                              type: string
                                            type: array
                                          topologyKey:
                                            type: string
                                        required:
                                        - topologyKey
                                        type: object
                                      type: array
                                  type: object
                                podAntiAffinity:
                                  properties:
                                    preferredDuringSchedulingIgnoredDuringExecution:
                                      items:
                                        properties:
                                          podAffinityTerm:
                                            properties:
                                              labelSelector:
                                                properties:
                                                  matchExpressions:
                                                    items:
                                                      properties:
                                                        key:
                                                          type: string
                                                        operator:
                                                          type: string
                                                        values:
                                                          items:
                                                            type: string
                                                          type: array
                                                      required:
                                                      - key
                                                      - operator
                                                      type: object
                                                    type: array
                                                  matchLabels:
                                                    additionalProperties:
                                                      type: string
                                                    type: object
                                                type: object
                                                x-kubernetes-map-type: atomic
                                              namespaceSelector:
                                                properties:
                                                  matchExpressions:
                                                    items:
                                                      properties:
                                                        key:
                                                          type: string
                                                        operator:
                                                          type: string
                                                        values:
                                                          items:
                                                            type: string
                                                          type: array
                                                      required:
                                                      - key
                                                      - operator
                                                      type: object
                                                    type: array
                                                  matchLabels:
                                                    additionalProperties:
                                                      type: string
                                                    type: object
                                                type: object
                                                x-kubernetes-map-type: atomic
                                              namespaces:
                                                items:
                                                  type: string
                                                type: array
                                              topologyKey:
                                                type: string
                                            required:
                                            - topologyKey
                                            type: object
                                          weight:
                                            format: int32
                                            type: integer
                                        required:
                                        - podAffinityTerm
                                        - weight
                                        type: object
                                      type: array
                                    requiredDuringSchedulingIgnoredDuringExecution:
                                      items:
                                        properties:
                                          labelSelector:
                                            properties:
                                              matchExpressions:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                              matchLabels:
                                                additionalProperties:
                                                  type: string
                                                type: object
                                            type: object
                                            x-kubernetes-map-type: atomic
                                          namespaceSelector:
                                            properties:
                                              matchExpressions:
                                                items:
                                                  properties:
                                                    key:
                                                      type: string
                                                    operator:
                                                      type: string
                                                    values:
                                                      items:
                                                        type: string
                                                      type: array
                                                  required:
                                                  - key
                                                  - operator
                                                  type: object
                                                type: array
                                              matchLabels:
                                                additionalProperties:
                                                  type: string
                                                type: object
                                            type: object
                                            x-kubernetes-map-type: atomic
                                          namespaces:
                                            items:
                                              type: string
                                            type: array
                                          topologyKey:
                                            type: string
                                        required:
                                        - topologyKey
                                        type: object
                                      type: array
                                  type: object
                              type: object
                            automountServiceAccountToken:
                              type: boolean
                            containers:
                              items:
                                properties:
                                  args:
                                    items:
                                      type: string
                                    type: array
                                  command:
                                    items:
                                      type: string
                                    type: array
                                  env:
                                    items:
                                      properties:
                                        name:
                                          type: string
                                        value:
                                          type: string
                                        valueFrom:
                                          properties:
                                            configMapKeyRef:
                                              properties:
                                                key:
                                                  type: string
                                                name:
                                                  type: string
                                                optional:
                                                  type: boolean
                                              required:
                                              - key
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            fieldRef:
                                              properties:
                                                apiVersion:
                                                  type: string
                                                fieldPath:
                                                  type: string
                                              required:
                                              - fieldPath
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            resourceFieldRef:
                                              properties:
                                                containerName:
                                                  type: string
                                                divisor:
                                                  anyOf:
                                                  - type: integer
                                                  - type: string
                                                  pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
                                                  x-kubernetes-int-or-string: true
                                                resource:
                                                  type: string
                                              required:
                                              - resource
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            secretKeyRef:
                                              properties:
                                                key:
                                                  type: string
                                                name:
                                                  type: string
                                                optional:
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
                                  envFrom:
                                    items:
                                      properties:
                                        configMapRef:
                                          properties:
                                            name:
                                              type: string
                                            optional:
                                              type: boolean
                                          type: object
                                          x-kubernetes-map-type: atomic
                                        prefix:
                                          type: string
                                        secretRef:
                                          properties:
                                            name:
                                              type: string
                                            optional:
                                              type: boolean
                                          type: object
                                          x-kubernetes-map-type: atomic
                                      type: object
                                    type: array
                                  image:
                                    type: string
                                  imagePullPolicy:
                                    type: string
                                  lifecycle:
                                    properties:
                                      postStart:
                                        properties:
                                          exec:
                                            properties:
                                              command:
                                                items:
                                                  type: string
                                                type: array
                                            type: object
                                          httpGet:
                                            properties:
                                              host:
                                                type: string
                                              httpHeaders:
                                                items:
                                                  properties:
                                                    name:
                                                      type: string
                                                    value:
                                                      type: string
                                                  required:
                                                  - name
                                                  - value
                                                  type: object
                                                type: array
                                              path:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                              scheme:
                                                type: string
                                            required:
                                            - port
                                            type: object
                                          tcpSocket:
                                            properties:
                                              host:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                            required:
                                            - port
                                            type: object
                                        type: object
                                      preStop:
                                        properties:
                                          exec:
                                            properties:
                                              command:
                                                items:
                                                  type: string
                                                type: array
                                            type: object
                                          httpGet:
                                            properties:
                                              host:
                                                type: string
                                              httpHeaders:
                                                items:
                                                  properties:
                                                    name:
                                                      type: string
                                                    value:
                                                      type: string
                                                  required:
                                                  - name
                                                  - value
                                                  type: object
                                                type: array
                                              path:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                              scheme:
                                                type: string
                                            required:
                                            - port
                                            type: object
                                          tcpSocket:
                                            properties:
                                              host:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                            required:
                                            - port
                                            type: object
                                        type: object
                                    type: object
                                  livenessProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  name:
                                    type: string
                                  ports:
                                    items:
                                      properties:
                                        containerPort:
                                          format: int32
                                          type: integer
                                        hostIP:
                                          type: string
                                        hostPort:
                                          format: int32
                                          type: integer
                                        name:
                                          type: string
                                        protocol:
                                          default: TCP
                                          type: string
                                      required:
                                      - containerPort
                                      type: object
                                    type: array
                                    x-kubernetes-list-map-keys:
                                    - containerPort
                                    - protocol
                                    x-kubernetes-list-type: map
                                  readinessProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  resources:
                                    properties:
                                      limits:
                                        x-kubernetes-preserve-unknown-fields: true
                                      requests:
                                        x-kubernetes-preserve-unknown-fields: true
                                    type: object
                                  securityContext:
                                    properties:
                                      allowPrivilegeEscalation:
                                        type: boolean
                                      capabilities:
                                        properties:
                                          add:
                                            items:
                                              type: string
                                            type: array
                                          drop:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      privileged:
                                        type: boolean
                                      procMount:
                                        type: string
                                      readOnlyRootFilesystem:
                                        type: boolean
                                      runAsGroup:
                                        format: int64
                                        type: integer
                                      runAsNonRoot:
                                        type: boolean
                                      runAsUser:
                                        format: int64
                                        type: integer
                                      seLinuxOptions:
                                        properties:
                                          level:
                                            type: string
                                          role:
                                            type: string
                                          type:
                                            type: string
                                          user:
                                            type: string
                                        type: object
                                      seccompProfile:
                                        properties:
                                          localhostProfile:
                                            type: string
                                          type:
                                            type: string
                                        required:
                                        - type
                                        type: object
                                      windowsOptions:
                                        properties:
                                          gmsaCredentialSpec:
                                            type: string
                                          gmsaCredentialSpecName:
                                            type: string
                                          hostProcess:
                                            type: boolean
                                          runAsUserName:
                                            type: string
                                        type: object
                                    type: object
                                  startupProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  stdin:
                                    type: boolean
                                  stdinOnce:
                                    type: boolean
                                  terminationMessagePath:
                                    type: string
                                  terminationMessagePolicy:
                                    type: string
                                  tty:
                                    type: boolean
                                  volumeDevices:
                                    items:
                                      properties:
                                        devicePath:
                                          type: string
                                        name:
                                          type: string
                                      required:
                                      - devicePath
                                      - name
                                      type: object
                                    type: array
                                  volumeMounts:
                                    items:
                                      properties:
                                        mountPath:
                                          type: string
                                        mountPropagation:
                                          type: string
                                        name:
                                          type: string
                                        readOnly:
                                          type: boolean
                                        subPath:
                                          type: string
                                        subPathExpr:
                                          type: string
                                      required:
                                      - mountPath
                                      - name
                                      type: object
                                    type: array
                                  workingDir:
                                    type: string
                                required:
                                - name
                                type: object
                              type: array
                            dnsConfig:
                              properties:
                                nameservers:
                                  items:
                                    type: string
                                  type: array
                                options:
                                  items:
                                    properties:
                                      name:
                                        type: string
                                      value:
                                        type: string
                                    type: object
                                  type: array
                                searches:
                                  items:
                                    type: string
                                  type: array
                              type: object
                            dnsPolicy:
                              type: string
                            enableServiceLinks:
                              type: boolean
                            ephemeralContainers:
                              items:
                                properties:
                                  args:
                                    items:
                                      type: string
                                    type: array
                                  command:
                                    items:
                                      type: string
                                    type: array
                                  env:
                                    items:
                                      properties:
                                        name:
                                          type: string
                                        value:
                                          type: string
                                        valueFrom:
                                          properties:
                                            configMapKeyRef:
                                              properties:
                                                key:
                                                  type: string
                                                name:
                                                  type: string
                                                optional:
                                                  type: boolean
                                              required:
                                              - key
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            fieldRef:
                                              properties:
                                                apiVersion:
                                                  type: string
                                                fieldPath:
                                                  type: string
                                              required:
                                              - fieldPath
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            resourceFieldRef:
                                              properties:
                                                containerName:
                                                  type: string
                                                divisor:
                                                  anyOf:
                                                  - type: integer
                                                  - type: string
                                                  pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
                                                  x-kubernetes-int-or-string: true
                                                resource:
                                                  type: string
                                              required:
                                              - resource
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            secretKeyRef:
                                              properties:
                                                key:
                                                  type: string
                                                name:
                                                  type: string
                                                optional:
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
                                  envFrom:
                                    items:
                                      properties:
                                        configMapRef:
                                          properties:
                                            name:
                                              type: string
                                            optional:
                                              type: boolean
                                          type: object
                                          x-kubernetes-map-type: atomic
                                        prefix:
                                          type: string
                                        secretRef:
                                          properties:
                                            name:
                                              type: string
                                            optional:
                                              type: boolean
                                          type: object
                                          x-kubernetes-map-type: atomic
                                      type: object
                                    type: array
                                  image:
                                    type: string
                                  imagePullPolicy:
                                    type: string
                                  lifecycle:
                                    properties:
                                      postStart:
                                        properties:
                                          exec:
                                            properties:
                                              command:
                                                items:
                                                  type: string
                                                type: array
                                            type: object
                                          httpGet:
                                            properties:
                                              host:
                                                type: string
                                              httpHeaders:
                                                items:
                                                  properties:
                                                    name:
                                                      type: string
                                                    value:
                                                      type: string
                                                  required:
                                                  - name
                                                  - value
                                                  type: object
                                                type: array
                                              path:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                              scheme:
                                                type: string
                                            required:
                                            - port
                                            type: object
                                          tcpSocket:
                                            properties:
                                              host:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                            required:
                                            - port
                                            type: object
                                        type: object
                                      preStop:
                                        properties:
                                          exec:
                                            properties:
                                              command:
                                                items:
                                                  type: string
                                                type: array
                                            type: object
                                          httpGet:
                                            properties:
                                              host:
                                                type: string
                                              httpHeaders:
                                                items:
                                                  properties:
                                                    name:
                                                      type: string
                                                    value:
                                                      type: string
                                                  required:
                                                  - name
                                                  - value
                                                  type: object
                                                type: array
                                              path:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                              scheme:
                                                type: string
                                            required:
                                            - port
                                            type: object
                                          tcpSocket:
                                            properties:
                                              host:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                            required:
                                            - port
                                            type: object
                                        type: object
                                    type: object
                                  livenessProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  name:
                                    type: string
                                  ports:
                                    items:
                                      properties:
                                        containerPort:
                                          format: int32
                                          type: integer
                                        hostIP:
                                          type: string
                                        hostPort:
                                          format: int32
                                          type: integer
                                        name:
                                          type: string
                                        protocol:
                                          default: TCP
                                          type: string
                                      required:
                                      - containerPort
                                      type: object
                                    type: array
                                    x-kubernetes-list-map-keys:
                                    - containerPort
                                    - protocol
                                    x-kubernetes-list-type: map
                                  readinessProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  resources:
                                    properties:
                                      limits:
                                        x-kubernetes-preserve-unknown-fields: true
                                      requests:
                                        x-kubernetes-preserve-unknown-fields: true
                                    type: object
                                  securityContext:
                                    properties:
                                      allowPrivilegeEscalation:
                                        type: boolean
                                      capabilities:
                                        properties:
                                          add:
                                            items:
                                              type: string
                                            type: array
                                          drop:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      privileged:
                                        type: boolean
                                      procMount:
                                        type: string
                                      readOnlyRootFilesystem:
                                        type: boolean
                                      runAsGroup:
                                        format: int64
                                        type: integer
                                      runAsNonRoot:
                                        type: boolean
                                      runAsUser:
                                        format: int64
                                        type: integer
                                      seLinuxOptions:
                                        properties:
                                          level:
                                            type: string
                                          role:
                                            type: string
                                          type:
                                            type: string
                                          user:
                                            type: string
                                        type: object
                                      seccompProfile:
                                        properties:
                                          localhostProfile:
                                            type: string
                                          type:
                                            type: string
                                        required:
                                        - type
                                        type: object
                                      windowsOptions:
                                        properties:
                                          gmsaCredentialSpec:
                                            type: string
                                          gmsaCredentialSpecName:
                                            type: string
                                          hostProcess:
                                            type: boolean
                                          runAsUserName:
                                            type: string
                                        type: object
                                    type: object
                                  startupProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  stdin:
                                    type: boolean
                                  stdinOnce:
                                    type: boolean
                                  targetContainerName:
                                    type: string
                                  terminationMessagePath:
                                    type: string
                                  terminationMessagePolicy:
                                    type: string
                                  tty:
                                    type: boolean
                                  volumeDevices:
                                    items:
                                      properties:
                                        devicePath:
                                          type: string
                                        name:
                                          type: string
                                      required:
                                      - devicePath
                                      - name
                                      type: object
                                    type: array
                                  volumeMounts:
                                    items:
                                      properties:
                                        mountPath:
                                          type: string
                                        mountPropagation:
                                          type: string
                                        name:
                                          type: string
                                        readOnly:
                                          type: boolean
                                        subPath:
                                          type: string
                                        subPathExpr:
                                          type: string
                                      required:
                                      - mountPath
                                      - name
                                      type: object
                                    type: array
                                  workingDir:
                                    type: string
                                required:
                                - name
                                type: object
                              type: array
                            hostAliases:
                              items:
                                properties:
                                  hostnames:
                                    items:
                                      type: string
                                    type: array
                                  ip:
                                    type: string
                                type: object
                              type: array
                            hostIPC:
                              type: boolean
                            hostNetwork:
                              type: boolean
                            hostPID:
                              type: boolean
                            hostUsers:
                              type: boolean
                            hostname:
                              type: string
                            imagePullSecrets:
                              items:
                                properties:
                                  name:
                                    type: string
                                type: object
                                x-kubernetes-map-type: atomic
                              type: array
                            initContainers:
                              items:
                                properties:
                                  args:
                                    items:
                                      type: string
                                    type: array
                                  command:
                                    items:
                                      type: string
                                    type: array
                                  env:
                                    items:
                                      properties:
                                        name:
                                          type: string
                                        value:
                                          type: string
                                        valueFrom:
                                          properties:
                                            configMapKeyRef:
                                              properties:
                                                key:
                                                  type: string
                                                name:
                                                  type: string
                                                optional:
                                                  type: boolean
                                              required:
                                              - key
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            fieldRef:
                                              properties:
                                                apiVersion:
                                                  type: string
                                                fieldPath:
                                                  type: string
                                              required:
                                              - fieldPath
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            resourceFieldRef:
                                              properties:
                                                containerName:
                                                  type: string
                                                divisor:
                                                  anyOf:
                                                  - type: integer
                                                  - type: string
                                                  pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
                                                  x-kubernetes-int-or-string: true
                                                resource:
                                                  type: string
                                              required:
                                              - resource
                                              type: object
                                              x-kubernetes-map-type: atomic
                                            secretKeyRef:
                                              properties:
                                                key:
                                                  type: string
                                                name:
                                                  type: string
                                                optional:
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
                                  envFrom:
                                    items:
                                      properties:
                                        configMapRef:
                                          properties:
                                            name:
                                              type: string
                                            optional:
                                              type: boolean
                                          type: object
                                          x-kubernetes-map-type: atomic
                                        prefix:
                                          type: string
                                        secretRef:
                                          properties:
                                            name:
                                              type: string
                                            optional:
                                              type: boolean
                                          type: object
                                          x-kubernetes-map-type: atomic
                                      type: object
                                    type: array
                                  image:
                                    type: string
                                  imagePullPolicy:
                                    type: string
                                  lifecycle:
                                    properties:
                                      postStart:
                                        properties:
                                          exec:
                                            properties:
                                              command:
                                                items:
                                                  type: string
                                                type: array
                                            type: object
                                          httpGet:
                                            properties:
                                              host:
                                                type: string
                                              httpHeaders:
                                                items:
                                                  properties:
                                                    name:
                                                      type: string
                                                    value:
                                                      type: string
                                                  required:
                                                  - name
                                                  - value
                                                  type: object
                                                type: array
                                              path:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                              scheme:
                                                type: string
                                            required:
                                            - port
                                            type: object
                                          tcpSocket:
                                            properties:
                                              host:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                            required:
                                            - port
                                            type: object
                                        type: object
                                      preStop:
                                        properties:
                                          exec:
                                            properties:
                                              command:
                                                items:
                                                  type: string
                                                type: array
                                            type: object
                                          httpGet:
                                            properties:
                                              host:
                                                type: string
                                              httpHeaders:
                                                items:
                                                  properties:
                                                    name:
                                                      type: string
                                                    value:
                                                      type: string
                                                  required:
                                                  - name
                                                  - value
                                                  type: object
                                                type: array
                                              path:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                              scheme:
                                                type: string
                                            required:
                                            - port
                                            type: object
                                          tcpSocket:
                                            properties:
                                              host:
                                                type: string
                                              port:
                                                anyOf:
                                                - type: integer
                                                - type: string
                                                x-kubernetes-int-or-string: true
                                            required:
                                            - port
                                            type: object
                                        type: object
                                    type: object
                                  livenessProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  name:
                                    type: string
                                  ports:
                                    items:
                                      properties:
                                        containerPort:
                                          format: int32
                                          type: integer
                                        hostIP:
                                          type: string
                                        hostPort:
                                          format: int32
                                          type: integer
                                        name:
                                          type: string
                                        protocol:
                                          default: TCP
                                          type: string
                                      required:
                                      - containerPort
                                      type: object
                                    type: array
                                    x-kubernetes-list-map-keys:
                                    - containerPort
                                    - protocol
                                    x-kubernetes-list-type: map
                                  readinessProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  resources:
                                    properties:
                                      limits:
                                        x-kubernetes-preserve-unknown-fields: true
                                      requests:
                                        x-kubernetes-preserve-unknown-fields: true
                                    type: object
                                  securityContext:
                                    properties:
                                      allowPrivilegeEscalation:
                                        type: boolean
                                      capabilities:
                                        properties:
                                          add:
                                            items:
                                              type: string
                                            type: array
                                          drop:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      privileged:
                                        type: boolean
                                      procMount:
                                        type: string
                                      readOnlyRootFilesystem:
                                        type: boolean
                                      runAsGroup:
                                        format: int64
                                        type: integer
                                      runAsNonRoot:
                                        type: boolean
                                      runAsUser:
                                        format: int64
                                        type: integer
                                      seLinuxOptions:
                                        properties:
                                          level:
                                            type: string
                                          role:
                                            type: string
                                          type:
                                            type: string
                                          user:
                                            type: string
                                        type: object
                                      seccompProfile:
                                        properties:
                                          localhostProfile:
                                            type: string
                                          type:
                                            type: string
                                        required:
                                        - type
                                        type: object
                                      windowsOptions:
                                        properties:
                                          gmsaCredentialSpec:
                                            type: string
                                          gmsaCredentialSpecName:
                                            type: string
                                          hostProcess:
                                            type: boolean
                                          runAsUserName:
                                            type: string
                                        type: object
                                    type: object
                                  startupProbe:
                                    properties:
                                      exec:
                                        properties:
                                          command:
                                            items:
                                              type: string
                                            type: array
                                        type: object
                                      failureThreshold:
                                        format: int32
                                        type: integer
                                      grpc:
                                        properties:
                                          port:
                                            format: int32
                                            type: integer
                                          service:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      httpGet:
                                        properties:
                                          host:
                                            type: string
                                          httpHeaders:
                                            items:
                                              properties:
                                                name:
                                                  type: string
                                                value:
                                                  type: string
                                              required:
                                              - name
                                              - value
                                              type: object
                                            type: array
                                          path:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                          scheme:
                                            type: string
                                        required:
                                        - port
                                        type: object
                                      initialDelaySeconds:
                                        format: int32
                                        type: integer
                                      periodSeconds:
                                        format: int32
                                        type: integer
                                      successThreshold:
                                        format: int32
                                        type: integer
                                      tcpSocket:
                                        properties:
                                          host:
                                            type: string
                                          port:
                                            anyOf:
                                            - type: integer
                                            - type: string
                                            x-kubernetes-int-or-string: true
                                        required:
                                        - port
                                        type: object
                                      terminationGracePeriodSeconds:
                                        format: int64
                                        type: integer
                                      timeoutSeconds:
                                        format: int32
                                        type: integer
                                    type: object
                                  stdin:
                                    type: boolean
                                  stdinOnce:
                                    type: boolean
                                  terminationMessagePath:
                                    type: string
                                  terminationMessagePolicy:
                                    type: string
                                  tty:
                                    type: boolean
                                  volumeDevices:
                                    items:
                                      properties:
                                        devicePath:
                                          type: string
                                        name:
                                          type: string
                                      required:
                                      - devicePath
                                      - name
                                      type: object
                                    type: array
                                  volumeMounts:
                                    items:
                                      properties:
                                        mountPath:
                                          type: string
                                        mountPropagation:
                                          type: string
                                        name:
                                          type: string
                                        readOnly:
                                          type: boolean
                                        subPath:
                                          type: string
                                        subPathExpr:
                                          type: string
                                      required:
                                      - mountPath
                                      - name
                                      type: object
                                    type: array
                                  workingDir:
                                    type: string
                                required:
                                - name
                                type: object
                              type: array
                            nodeName:
                              type: string
                            nodeSelector:
                              additionalProperties:
                                type: string
                              type: object
                              x-kubernetes-map-type: atomic
                            os:
                              properties:
                                name:
                                  type: string
                              required:
                              - name
                              type: object
                            overhead:
                              additionalProperties:
                                anyOf:
                                - type: integer
                                - type: string
                                pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
                                x-kubernetes-int-or-string: true
                              type: object
                            preemptionPolicy:
                              type: string
                            priority:
                              format: int32
                              type: integer
                            priorityClassName:
                              type: string
                            readinessGates:
                              items:
                                properties:
                                  conditionType:
                                    type: string
                                required:
                                - conditionType
                                type: object
                              type: array
                            restartPolicy:
                              type: string
                            runtimeClassName:
                              type: string
                            schedulerName:
                              type: string
                            securityContext:
                              properties:
                                fsGroup:
                                  format: int64
                                  type: integer
                                fsGroupChangePolicy:
                                  type: string
                                runAsGroup:
                                  format: int64
                                  type: integer
                                runAsNonRoot:
                                  type: boolean
                                runAsUser:
                                  format: int64
                                  type: integer
                                seLinuxOptions:
                                  properties:
                                    level:
                                      type: string
                                    role:
                                      type: string
                                    type:
                                      type: string
                                    user:
                                      type: string
                                  type: object
                                seccompProfile:
                                  properties:
                                    localhostProfile:
                                      type: string
                                    type:
                                      type: string
                                  required:
                                  - type
                                  type: object
                                supplementalGroups:
                                  items:
                                    format: int64
                                    type: integer
                                  type: array
                                sysctls:
                                  items:
                                    properties:
                                      name:
                                        type: string
                                      value:
                                        type: string
                                    required:
                                    - name
                                    - value
                                    type: object
                                  type: array
                                windowsOptions:
                                  properties:
                                    gmsaCredentialSpec:
                                      type: string
                                    gmsaCredentialSpecName:
                                      type: string
                                    hostProcess:
                                      type: boolean
                                    runAsUserName:
                                      type: string
                                  type: object
                              type: object
                            serviceAccount:
                              type: string
                            serviceAccountName:
                              type: string
                            setHostnameAsFQDN:
                              type: boolean
                            shareProcessNamespace:
                              type: boolean
                            subdomain:
                              type: string
                            terminationGracePeriodSeconds:
                              format: int64
                              type: integer
                            tolerations:
                              items:
                                properties:
                                  effect:
                                    type: string
                                  key:
                                    type: string
                                  operator:
                                    type: string
                                  tolerationSeconds:
                                    format: int64
                                    type: integer
                                  value:
                                    type: string
                                type: object
                              type: array
                            topologySpreadConstraints:
                              items:
                                properties:
                                  labelSelector:
                                    properties:
                                      matchExpressions:
                                        items:
                                          properties:
                                            key:
                                              type: string
                                            operator:
                                              type: string
                                            values:
                                              items:
                                                type: string
                                              type: array
                                          required:
                                          - key
                                          - operator
                                          type: object
                                        type: array
                                      matchLabels:
                                        additionalProperties:
                                          type: string
                                        type: object
                                    type: object
                                    x-kubernetes-map-type: atomic
                                  matchLabelKeys:
                                    items:
                                      type: string
                                    type: array
                                    x-kubernetes-list-type: atomic
                                  maxSkew:
                                    format: int32
                                    type: integer
                                  minDomains:
                                    format: int32
                                    type: integer
                                  nodeAffinityPolicy:
                                    type: string
                                  nodeTaintsPolicy:
                                    type: string
                                  topologyKey:
                                    type: string
                                  whenUnsatisfiable:
                                    type: string
                                required:
                                - maxSkew
                                - topologyKey
                                - whenUnsatisfiable
                                type: object
                              type: array
                              x-kubernetes-list-map-keys:
                              - topologyKey
                              - whenUnsatisfiable
                              x-kubernetes-list-type: map
                            volumes:
                              x-kubernetes-preserve-unknown-fields: true
                          required:
                          - containers
                          type: object
                      type: object
                  required:
                  - name
                  - selector
                  - template
                  type: object
                type: array
              terminate:
                type: boolean
            required:
            - templates
            type: object
          status:
            properties:
              analysisRuns:
                items:
                  properties:
                    analysisRun:
                      type: string
                    message:
                      type: string
                    name:
                      type: string
                    phase:
                      type: string
                  required:
                  - analysisRun
                  - name
                  - phase
                  type: object
                type: array
              availableAt:
                format: date-time
                type: string
              conditions:
                items:
                  properties:
                    lastTransitionTime:
                      format: date-time
                      type: string
                    lastUpdateTime:
                      format: date-time
                      type: string
                    message:
                      type: string
                    reason:
                      type: string
                    status:
                      type: string
                    type:
                      type: string
                  required:
                  - lastTransitionTime
                  - lastUpdateTime
                  - message
                  - reason
                  - status
                  - type
                  type: object
                type: array
              message:
                type: string
              phase:
                type: string
              templateStatuses:
                items:
                  properties:
                    availableReplicas:
                      format: int32
                      type: integer
                    collisionCount:
                      format: int32
                      type: integer
                    lastTransitionTime:
                      format: date-time
                      type: string
                    message:
                      type: string
                    name:
                      type: string
                    podTemplateHash:
                      type: string
                    readyReplicas:
                      format: int32
                      type: integer
                    replicas:
                      format: int32
                      type: integer
                    serviceName:
                      type: string
                    status:
                      type: string
                    updatedReplicas:
                      format: int32
                      type: integer
                  required:
                  - availableReplicas
                  - name
                  - readyReplicas
                  - replicas
                  - updatedReplicas
                  type: object
                type: array
            type: object
        required:
        - spec
        type: object
    served: true
    storage: true
    subresources: {}
status:
  acceptedNames:
    kind: Experiment
    listKind: ExperimentList
    plural: experiments
    shortNames:
    - exp
    singular: experiment
  conditions:
  - lastTransitionTime: "2024-06-25T14:20:07Z"
    message: no conflicts found
    reason: NoConflicts
    status: "True"
    type: NamesAccepted
  - lastTransitionTime: "2024-06-25T14:20:07Z"
    message: the initial names have been accepted
    reason: InitialNamesAccepted
    status: "True"
    type: Established
  storedVersions:
  - v1alpha1
