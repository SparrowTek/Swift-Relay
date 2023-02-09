qbuild: Sources
	swift build -c debug --triple wasm32-unknown-wasi

serve: build
	fastly compute serve --skip-build --file ./.build/debug/Relay.wasm
