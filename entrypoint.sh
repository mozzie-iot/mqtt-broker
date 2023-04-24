#!/bin/sh

mosquitto_passwd -b /etc/mosquitto/passwd $MQTT_USERNAME $MQTT_PASSWORD

exec "$@"
