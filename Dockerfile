FROM eclipse-mosquitto:2.0.15

COPY --chown=1883:1883 entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["/usr/sbin/mosquitto","-c","/mosquitto/config/mosquitto.conf"]

# This will be a shared volume
RUN rm /mosquitto/config/mosquitto.conf
COPY --chown=1883:1883 ./mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883:1883

USER 1883