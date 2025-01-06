FROM rust:latest

COPY . .

RUN cargo build --bin server --release

CMD ["target/release/server", "--port", "5555", "--secret-key-seed", "123"]
