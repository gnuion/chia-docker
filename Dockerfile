FROM alpine:3.16
COPY builder/build /root/build
RUN apk --update --no-cache add python3 gmp
ENV VIRTUAL_ENV=/root/build/chia-blockchain/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV PLOT_DIR=""
ENV KEYS=""
ENV DOTCHIA=""
EXPOSE 8555/tcp
EXPOSE 8444/tcp
ENV PLOT_DIR="/mnt/chia"
ENV KEYS=""
ENV DOTCHIA=""
COPY farmer.sh .
CMD ["/bin/ash","farmer.sh"]