FROM eclipse-mosquitto:2.0.15

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["/usr/sbin/mosquitto","-c","/mosquitto/config/mosquitto.conf"]

RUN rm /mosquitto/config/mosquitto.conf
COPY ./mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883:1883