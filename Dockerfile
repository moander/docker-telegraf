FROM telegraf:1.8-alpine

RUN apk add --no-cache jq nano curl

ADD telegraf.conf /etc/telegraf/

# Available config options
ENV INFLUX_URL="http://REPLACE_ME:8086" \
    INFLUX_DATABASE="defaultdb" \
    INFLUX_USERNAME="" \
    INFLUX_PASSWORD="" \
    INFLUX_EXTRA_1="" \
    INFLUX_EXTRA_1="" \
    INFLUX_EXTRA_2="" \
    INFLUX_EXTRA_3="" \
    TELEGRAF_FLUSH_INTERVAL="2s" \
    TELEGRAF_FLUSH_JITTER="1s" \
    TELEGRAF_INTERVAL="10s" \
    TELEGRAF_DEBUG="true" \
    TELEGRAF_QUIET="false" \
    TELEGRAF_METRIC_BATCH_SIZE="10000" \
    TELEGRAF_METRIC_BUFFER_LIMIT="200000" \
    GLOBAL_TAGS_ENV="unknown" \
    TELEGRAF_OMIT_HOSTNAME="true" \
    TELEGRAF_ARGS=""


# influx udp (inputs.socket_listener)
EXPOSE 8089

# influx http (inputs.http_listener)
EXPOSE 8086

CMD telegraf ${TELEGRAF_ARGS}
