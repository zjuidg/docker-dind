FROM docker:latest

ENV DOCKER_HOST=tcp://localhost:2375
COPY build.sh /
RUN chmod +x /build.sh

CMD ["/build.sh"]
