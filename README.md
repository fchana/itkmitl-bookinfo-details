# How to run details service

## Prerequisite

* Ruby 2.7

```bash
ruby details.rb 9080
```

## How to run with Docker

```bash
# Build Docker Image for rating service
docker build -t details .

# Run itkmitl-bookinfo-details on port 8081
docker run -d -p 8081:9080 -e ENABLE_EXTERNAL_BOOK_SERVICE=true details

