FROM telegraf:1.8-alpine

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
    TELEGRAF_ARGS=""


# statsd udp
EXPOSE 8125

# http_listener
EXPOSE 8186
