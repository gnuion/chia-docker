#!/bin/ash

echo "Initializing chia"
chia init --fix-ssl-permissions

echo "Adding keys from ${KEYS}"
cat ${KEYS} | chia keys add

for plot in ${PLOTS_DIR/*}
do
  echo "Adding plot directory ${p}"
  mkdir -p ${p}
  chia plots add -d ${p}
done

echo "Replacing localhost with 127.0.0.1"
sed -i 's/localhost/127.0.0.1/g' ~/.chia/mainnet/config/config.yaml

echo "Starting farmer"
chia start farmer

while [ 1 ]
do
  chia farm summary
  chia show -sc
  sleep 1h
done