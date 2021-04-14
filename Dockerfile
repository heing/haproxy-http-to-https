FROM haproxy:2.3
RUN apt-get -y update && apt-get -y install ca-certificates && rm -rf /var/lib/apt/lists/*
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
EXPOSE 8080
ENV BACKEND_PORT 443
