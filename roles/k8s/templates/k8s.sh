#!/bin/bash
images=(kube-proxy-amd64:v1.10.7 kube-scheduler-amd64:v1.10.7 kube-controller-manager-amd64:v1.11.2
        kube-apiserver-amd64:v1.11.2 etcd:3.2.18 coredns:1.2.2 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.10.0 kubernetes-dashboard-init-amd64:v1.0.1
        k8s-dns-sidecar-amd64:1.14.9 k8s-dns-kube-dns-amd64:1.14.9 k8s-dns-dnsmasq-nanny-amd64:1.14.9 heapster-amd64:v1.5.4)
for imageName in ${images[@]} ; do
    docker pull xxlaila/$imageName
    docker tag xxlaila/$imageName k8s.gcr.io/$imageName
    docker rmi xxlaila/$imageName
done

docker tag cf80e75b1030 k8s.gcr.io/pause:3.1