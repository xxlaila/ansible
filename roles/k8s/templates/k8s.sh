 #!/bin/bash
images=(kube-proxy-amd64 kube-scheduler-amd64 kube-controller-manager-amd64 kube-apiserver-amd64 etcd coredns pause-amd64 kubernetes-dashboard-amd64 kubernetes-dashboard-init-amd64 k8s-dns-sidecar-amd64 k8s-dns-kube-dns-amd64 k8s-dns-dnsmasq-nanny-amd64 heapster-amd64)
for imageName in ${images[@]} ; do
    docker pull xxlaila/$imageName
    docker tag xxlaila/$imageName k8s.gcr.io/$imageName
    docker rmi xxlaila/$imageName
done

docker tag cf80e75b1030 k8s.gcr.io/pause:3.1