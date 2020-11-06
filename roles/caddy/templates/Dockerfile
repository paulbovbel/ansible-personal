FROM caddy:2.2.1-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-portal@main \
    --with github.com/greenpau/caddy-auth-jwt@main

FROM caddy:2.2.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

RUN apk add --no-cache tzdata
