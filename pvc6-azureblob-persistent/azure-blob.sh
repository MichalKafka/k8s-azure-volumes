az aks update --enable-blob-driver -n aks1 -g aks1

#vytvoril jsem kafkam3storageaccount
#dulezite !!!
 - pouzit premium tier + blockblob
 - povolit nfs3 access + hierarchical namespace

#vytvoril jsem kafkami3container

#bohuzel to konci
# Warning  FailedMount       3s (x2 over 6s)    kubelet            MountVolume.MountDevice failed for volume "pv-blob" : rpc error: code = Internal desc = volume(kafkam3storageaccount_kafkam3container) mount "kafkam3storageaccount.blob.core.windows.net:/kafkam3storageaccount/kafkam3container" on "/var/lib/kubelet/plugins/kubernetes.io/csi/blob.csi.azure.com/aab457d2e9122003d082408ca5f65215841ca2db64dbd2d7af2324d231953035/globalmount" failed with mount failed: exit status 32
# Mounting command: mount
# Mounting arguments: -t nfs -o sec=sys,vers=3,nolock kafkam3storageaccount.blob.core.windows.net:/kafkam3storageaccount/kafkam3container /var/lib/kubelet/plugins/kubernetes.io/csi/blob.csi.azure.com/aab457d2e9122003d082408ca5f65215841ca2db64dbd2d7af2324d231953035/globalmount
# Output: mount.nfs: access denied by server while mounting kafkam3storageaccount.blob.core.windows.net:/kafkam3storageaccount/kafkam3container

#bylo nutne k povolenym sitim storage accountu pridat AKS-VNET !!!
