# Provide your own pull secret file location
export pullsecret_file=./pull-secret.txt

# My installation dir is ./config so I need to purge this one
rm -rf ./config
# My cluster name at simple install is firstgcp so I need to remove it before config cleation as well
rm -rf ./firstaws

./openshift-install create install-config --dir ./config --log-level debug

