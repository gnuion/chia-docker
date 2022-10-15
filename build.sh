cd builder && sh build.sh && cd .. \
&& docker build --no-cache -t gnuion/chia-docker:py3.10 .
