FROM caddy:2.4.6-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-portal@v1.4.28 \
    --with github.com/greenpau/caddy-authorize@v1.3.20

FROM caddy:2.4.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

RUN apk add --no-cache tzdata
