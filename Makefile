##
# Utility commands
##

latest: Dockerfile
	@docker build -t activatedgeek/adminer:latest .

run:
	@docker run -d -p 9090:80 \
		--name test-adminer \
		activatedgeek/adminer:latest

login:
	@docker exec -it test-adminer bash

logs:
	@docker logs test-adminer

kill:
	@docker rm -f test-adminer
