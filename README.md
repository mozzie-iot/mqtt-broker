# Huebot MQTT Broker

Run Docker commands from repo root

## Build:

`docker build -t ghcr.io/huebot-iot/mqtt:[version] -t ghcr.io/huebot-iot/mqtt:latest .`

## Run (development):

```
<<<<<<< HEAD
docker-compose up
=======
docker run -d \
-v /usr/local/bin/mosquitto/conf.d:/mosquitto/config/conf.d \
-v /usr/local/bin/mosquitto/passwd:/etc/mosquitto/passwd \
-v /usr/local/bin/mosquitto/data:/mosquitto/data \
-v /usr/local/bin/mosquitto/log:/mosquitto/log \
--name mqtt --restart=always ghcr.io/huebot-iot/mqtt:[version]|latest
>>>>>>> 7e18f422b154dfd948e20d28868ab13880a7505f
```

## Push:

1. `docker push ghcr.io/huebot-iot/mqtt:[version]`
2. `docker push ghcr.io/huebot-iot/mqtt:latest` (just tags as 'latest')

## Logs

`sudo cat /usr/local/bin/mosquitto/log/mosquitto.log`

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`
