set -e

docker build --tag gnuion/chia-builder:py3.10 .

if [ -d "chia-blockchain" ]; then rm -Rf chia-blockchain; fi

mkdir chia-blockchain && cd chia-blockchain
git clone --depth 1 https://github.com/Chia-Network/chia-blockchain.git -b latest .
git submodule update --init mozilla-ca

docker run -v $PWD:/opt/chia-blockchain gnuion/chia-builder:py3.10 ash -c "\
cd /opt/chia-blockchain && sh install.sh"