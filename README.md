# Huebot MQTT Broker

Run Docker commands from repo root

## Run (development):

```
docker-compose up
```


## Build:

`docker build -t ghcr.io/huebot-iot/mqtt:[version] -t ghcr.io/huebot-iot/mqtt:latest .`

## Push:

1. `docker push ghcr.io/huebot-iot/mqtt:[version]`
2. `docker push ghcr.io/huebot-iot/mqtt:latest` (just tags as 'latest')

## Logs

`cat /usr/local/bin/mosquitto/log/mosquitto.log`

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`
