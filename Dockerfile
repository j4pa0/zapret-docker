FROM alpine:latest AS build

RUN apk update && apk upgrade && apk add git && \
    git clone https://github.com/bol-van/zapret.git

FROM alpine:latest

COPY --from=build /zapret/binaries/arm/tpws /opt/tpws