##
# Utility commands
##

latest: Dockerfile
	@docker build -t activatedgeek/adminer:devel .

run:
	@docker run -d -p 9090:80 \
		--name test-adminer \
		activatedgeek/adminer:devel

login:
	@docker exec -it test-adminer sh

logs:
	@docker logs test-adminer

kill:
	@docker rm -f test-adminer
