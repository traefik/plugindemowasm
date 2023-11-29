build:
	@tinygo build -o plugin.wasm -scheduler=none --no-debug -target=wasi ./demo.go
