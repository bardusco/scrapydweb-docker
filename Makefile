# Makefile for Scrapy Platform Project

# Docker image tag
IMAGE_TAG=scrapydweb:latest

# .env file location
ENV_FILE=./.env

# Default make target
all: help

# Build the Docker image
build:
	docker build -t $(IMAGE_TAG) https://github.com/bardusco/scrapydweb-docker.git#master

# Run the Docker containers
start: start-scrapyd start-scrapydweb

start-scrapyd:
	docker-compose up -d scrapyd

start-scrapydweb:
	docker-compose up -d scrapydweb

stop:
	docker-compose stop

destroy:
	docker-compose down

# Create .env file with default values
setup-env:
	echo "SCRAPYDWEB_URL=http://172.17.0.1:5000" >> $(ENV_FILE)
	echo "USERNAME=admin" >> $(ENV_FILE)
	echo "PASSWORD=mypass" >> $(ENV_FILE)
	echo "SCRAPYD_SERVERS=172.17.0.1:6800" >> $(ENV_FILE)
	echo "SCRAPYD_USERNAME=tau_scrapy" >> $(ENV_FILE)
	echo "SCRAPYD_PASSWORD=maypass" >> $(ENV_FILE)
	echo "WEBHOOK_URL=http://localhost:9001/webhook" >> $(ENV_FILE)
	echo "TELEGRAM_CHAT_ID=374778230" >> $(ENV_FILE)
	echo "TELEGRAM_TOKEN=xxxx:xxxx" >> $(ENV_FILE)

# Help
help:
	@echo "Makefile for managing the Scrapy Platform Project"
	@echo ""
	@echo "Targets:"
	@echo "  build            - Build the Docker image for the project."
	@echo "  start            - Run the Docker containers for Scrapyd and Scrapydweb."
	@echo "  start-scrapyd    - Run the Docker container for Scrapyd."
	@echo "  start-scrapydweb - Run the Docker container for Scrapydweb."
	@echo "  setup-env        - Create a .env file with default environment variables."
	@echo "  help             - Display this help."
