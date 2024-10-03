
oc get configmap/coreos-bootimages \
   -n openshift-machine-config-operator \
   -o jsonpath='{.data.stream}' | jq -r '.architectures.aarch64.images.aws.regions."eu-west-1".image'

