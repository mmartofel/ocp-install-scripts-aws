# If you don't have OpenShift installer binary available locally you can download
# openshift-install and oc binaries using this script

# Install OpenShift CLI (oc)
echo "Installing OpenShift CLI..."
wget -q https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz
mkdir -p oc_install
tar xzf openshift-client-linux.tar.gz -C oc_install
sudo mv oc_install/oc /usr/local/bin/
sudo mv oc_install/kubectl /usr/local/bin/
rm openshift-client-linux.tar.gz
rm -rf oc_install

# Install OpenShift Installer
echo "Installing OpenShift Installer..."
wget -q https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux.tar.gz
mkdir -p openshift_install
tar xzf openshift-install-linux.tar.gz -C openshift_install
sudo mv openshift_install/openshift-install .
rm openshift-install-linux.tar.gz
rm -rf openshift_install
