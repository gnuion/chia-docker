set -e

# docker build --tag gnuion/chia-builder:py3.10 .

if [ -d "stai-blockchain" ]; then rm -Rf stai-blockchain; fi

mkdir stai-blockchain && cd stai-blockchain

git clone https://github.com/STATION-I/stai-blockchain.git

docker run -v $PWD:/opt/stai-blockchain gnuion/chia-builder:py3.10 ash -c "\
cd /opt/stai-blockchain && sh install.sh"