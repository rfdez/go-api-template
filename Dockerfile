# syntax=docker/dockerfile:1
FROM golang:1.21-alpine AS build

WORKDIR /usr/src/app

COPY go.mod go.sum ./

RUN GO111MODULE=on GOPROXY=https://proxy.golang.org go mod download

COPY . .

RUN CGO_ENABLED=0 go build -a --trimpath --ldflags="-s -w" -o ./app ./cmd/app/main.go


FROM gcr.io/distroless/base-debian12

WORKDIR /

COPY --from=build /usr/src/app/app .

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/app"]
