# [WIP] Go API Template

In this repository you will find a template for creating a Go backend project. It includes the entrypoint of the application, testing, linter and docker already configured.

## 📄 Features

- [Go](https://golang.org/) as programming language
- [Gin](https://gin-gonic.com/) as web framework
- [Testify](https://github.com/stretchr/testify). A toolkit with common assertions and mocks that plays nicely with the standard library
  - With [Mockery](https://vektra.github.io/mockery/latest/) for generating mocks
  - With [httptest](https://pkg.go.dev/net/http/httptest) native package for testing HTTP handlers
- [Golangci-lint](https://golangci-lint.run/) as linter and formatter
- [Docker](https://www.docker.com/) as containerization tool
- [Github Actions](https://github.com/features/actions) for CI (Continuous Integration)

## 🚀 Getting Started

```shell
# Install dependencies
go mod download

# Run the application
go run cmd/app/main.go

# Build the application
CGO_ENABLED=0 go build -a --trimpath --ldflags="-s -w" -o ./bin/app ./cmd/app/main.go

# Run the application with the binary
./bin/app
```

## 🐳 Docker

```shell
# Build the image
docker build -t <owner>/go-api-template:<tag> .

# Run the container
docker run --rm -p 8080:8080 <owner>/go-api-template:<tag>
```

## 🧪 Testing

```shell
# Run tests
go test -race -parallel 2 -cover ./...
```

## 💅 Linting

```shell
# Run linter (if you have golangci-lint installed)
golangci-lint run

# Run linter (with docker)
docker run -t --rm -v $(pwd):/app -w /app golangci/golangci-lint:v1.54.2 golangci-lint run
```
