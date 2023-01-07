# Harness MQTT Broker

Run Docker commands from repo root

## Build:

`docker build -t ghcr.io/harness-iot/mqtt:[version] -t ghcr.io/harness-iot/mqtt:latest .`

## Run (development):

```
docker-compose up
```

## Push:

1. `docker push ghcr.io/harness-iot/mqtt:[version]`
2. `docker push ghcr.io/harness-iot/mqtt:latest` (just tags as 'latest')

## Logs

`sudo cat /usr/local/bin/mosquitto/log/mosquitto.log`

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`
