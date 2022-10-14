docker build -t gnuion/chia-docker:py3.10 .

if [ $? -ne 0 ]; then
  rm -rf builder chia-blockchain
fi
