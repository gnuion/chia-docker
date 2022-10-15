cd builder && sh build.sh && cd .. \
&& docker build --no-cache -t gnuion/stai-docker:py3.10 .
