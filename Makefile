.PHONY: test checks build

default: test checks build

test:
	go test -v -cover ./...

build:
	@tinygo build -o plugin.wasm -scheduler=none --no-debug -target=wasi ./demo.go

checks:
	golangci-lint run
