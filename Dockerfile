FROM docker:dind
ENV HTTP_PROXY=http://http-proxy.kube-system.svc.cluster.local
ENV HTTPS_PROXY=http://http-proxy.kube-system.svc.cluster.local
ENV NO_PROXY=zjuvis.org,localhost,127.0.0.1
COPY daemon.json /etc/docker/