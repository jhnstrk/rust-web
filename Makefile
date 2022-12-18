format:
	# Requires 
	# rustup component add rustfmt
	cargo fmt

run:
	cd frontend && trunk build && \
	cd ../backend && cargo run

release:
	cd frontend && trunk build --release && \
	cd ../backend && cargo build --release

.PHONY: docker
docker:
	docker build -f docker/Dockerfile \
	  -t yew-app:development \
	  .

docker-run:
	docker run -it -p 8080:8080 --rm yew-app:development
	