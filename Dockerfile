# Version: 1.0
FROM caddy:2.6.4-alpine

# Caddyfile: ./Caddyfile
COPY ./Caddyfile /etc/caddy/Caddyfile

# Port: 80
EXPOSE 80

# Run Caddy
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile", "--watch", "--environ"]