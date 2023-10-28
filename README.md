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
- [Taskfile](https://taskfile.dev) for task automation

## 🚀 Getting Started

```shell
# Install dependencies
task deps

# Run the application
task run

# Build the application
task build

# Run the application with the binary
task start
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
task test
```

## 💅 Linting

```shell
# Run linter (if you have golangci-lint installed)
task lint

# Run linter (with docker)
task lint:docker
```
