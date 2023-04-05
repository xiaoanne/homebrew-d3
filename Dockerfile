FROM ubuntu:latest
COPY ./kinetik-cli--0.13.5.arm64_monterey.bottle.tar.gz .
RUN tar xvf kinetik-cli--0.13.5.arm64_monterey.bottle.tar.gz
# RUN curl -fsSL https://github.com/your/package/archive/vX.X.X.tar.gz | tar xz
# WORKDIR package-X.X.X
# RUN ./configure && make && make install