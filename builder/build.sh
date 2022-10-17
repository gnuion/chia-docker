set -e

# docker build --tag gnuion/chia-builder:py3.10 .

if [ -d "stor-blockchain" ]; then rm -Rf stor-blockchain; fi

mkdir stor-blockchain && cd stor-blockchain

git clone https://github.com/Stor-Network/stor-blockchain.git .

docker run -v $PWD:/opt/stor-blockchain gnuion/chia-builder:py3.10 ash -c "\
cd /opt/stor-blockchain && sh install.sh"