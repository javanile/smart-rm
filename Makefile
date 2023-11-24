
start:
	@docker compose up -d
	@echo "Try to run: curl http://localhost:5005"

test:
	@docker build -t javanile/smart-rm .
	@docker compose up smart-rm
