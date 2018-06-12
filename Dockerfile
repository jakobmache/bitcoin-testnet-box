# bitcoin-testnet-box docker image

# Ubuntu 14.04 LTS (Trusty Tahr)
FROM ubuntu:14.04
MAINTAINER Sean Lavine <lavis88@gmail.com>

# add bitcoind from the official PPA
RUN apt-get update
RUN apt-get install --yes software-properties-common
RUN add-apt-repository --yes ppa:bitcoin/bitcoin
RUN apt-get update

# install bitcoind (from PPA) and make
RUN apt-get install --yes bitcoind make

# copy the testnet-box files into the image
COPY .  /bitcoin-testnet-box

# run commands from inside the testnet-box directory
WORKDIR /bitcoin-testnet-box

# Start bitcoin core
#RUN source startup.sh

# expose two rpc ports for the nodes to allow outside container access
EXPOSE 19001 19011
CMD ["/bin/bash"]
