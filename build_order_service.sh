docker build -t ghcr.io/praset911/order-service:latest .
docker login --username praset911 --password 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 ghcr.io
docker push ghcr.io/praset911/order-service:latest