# Use the official Eclipse Mosquitto image as the base
FROM eclipse-mosquitto:latest

# Copy the mosquitto configuration file into the container
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Copy the password file into the container
COPY passwordfile /mosquitto/config/passwordfile

# Expose the default MQTT port
EXPOSE 1883
EXPOSE 8883

# Expose the WebSocket port (optional)
EXPOSE 9001

# Set the entrypoint to start the mosquitto service with the specified config
CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
