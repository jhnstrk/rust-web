format:
	# Requires 
	# rustup component add rustfmt
	cargo fmt

run:
	cd frontend && trunk build && \
	cd backend && cargo run

release:
	cd frontend && trunk build --release && \
	cd backend && cargo build --release
