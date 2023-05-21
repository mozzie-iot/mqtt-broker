FROM eclipse-mosquitto:2.0.15
LABEL org.opencontainers.image.source https://github.com/huebot-iot/mqtt-broker

COPY --chown=1883:1883 entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]

RUN rm /mosquitto/config/mosquitto.conf
COPY --chown=1883:1883 ./mosquitto.conf /mosquitto/config/mosquitto.conf
CMD ["/usr/sbin/mosquitto","-c","/mosquitto/config/mosquitto.conf"]

# Needed for password encrypted file generated in entrypoint
RUN mkdir /etc/mosquitto
RUN touch /etc/mosquitto/passwd
RUN chown -R 1883:1883 /etc/mosquitto

EXPOSE 1883:1883

USER 1883