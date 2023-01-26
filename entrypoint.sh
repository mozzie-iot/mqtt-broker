#!/bin/sh

MQTT_USERNAME=$(jq -r .mqtt_username /etc/mosquitto/huebot.config)
MQTT_PASSWORD=$(jq -r .mqtt_password /etc/mosquitto/huebot.config)

mosquitto_passwd -b /etc/mosquitto/passwd $MQTT_USERNAME $MQTT_PASSWORD

exec "$@"
