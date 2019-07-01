FROM docker:dind
ENV HTTP_PROXY=http://http-proxy.kube-system.svc.cluster.local:8118
ENV HTTPS_PROXY=http://http-proxy.kube-system.svc.cluster.local:8118
ENV NO_PROXY=zjuvis.org,localhost,127.0.0.1
COPY daemon.json /etc/docker/