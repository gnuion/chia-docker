FROM alpine:3.16
COPY builder/chia-blockchain /opt/chia-blockchain
RUN apk --update --no-cache add python3 gmp
ENV VIRTUAL_ENV=/opt/chia-blockchain/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV PLOT_DIR="/media/plots"
ENV KEYS="/root/.chiakey"
EXPOSE 8555/tcp
EXPOSE 8444/tcp
COPY farmer.sh .
CMD ["/bin/ash","farmer.sh"]