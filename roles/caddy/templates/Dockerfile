FROM caddy:2.2.1-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-portal@v1.2.19 \
    --with github.com/greenpau/caddy-auth-jwt@v1.1.9

FROM caddy:2.2.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

RUN apk add --no-cache tzdata
