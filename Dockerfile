FROM fedora:37
COPY ./bin .
COPY ./kinetik--0.13.5.arm64_monterey.bottle.tar.gz .
RUN ls -ll
# COPY ./Formula/nanne.rb .
# RUN brew install nanne.rb