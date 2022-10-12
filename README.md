# Harness MQTT Broker

Run Docker commands from repo root

## Build:

`docker build -t ghcr.io/harness-iot/mqtt:[version] -t ghcr.io/harness-iot/mqtt:latest .`

## Run (development):

```
docker run -d -p [PORT]:1883 \
-v /usr/local/bin/mosquitto/passwd:/etc/mosquitto/passwd \
-v /usr/local/bin/mosquitto/data:/mosquitto/data \
-v /var/log/mosquitto/mosquitto.log:/mosquitto/log/mosquitto.log \
--name mqtt --restart=always ghcr.io/harness-iot/mqtt:[version]|latest
```

Note: port must match listener port specified in `mosquitto.conf`

## Push:

1. `docker push ghcr.io/harness-iot/mqtt:[version]`
2. `docker push ghcr.io/harness-iot/mqtt:latest` (just tags as 'latest')

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`

```

```
