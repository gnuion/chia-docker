docker build --tag gnuion/chia-builder:py3.10 .

git clone --depth 1 https://github.com/Chia-Network/chia-blockchain.git -b latest chia-blockchain
git submodule update --init mozilla-ca

docker run -v $PWD/chia-blockchain:/opt/chia-blockchain gnuion/chia-builder:py3.10 ash -c "\
cd /opt/chia-blockchain && install.sh"