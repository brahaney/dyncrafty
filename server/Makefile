build:
    docker build -t dyncrafty_mcmyadmin .

debug:
	docker run \
	--rm \
	--name mcmyadmin_test \
	-v /Users/dbrahaney/minecraft/:/AMP/.ampdata \
	-p 8080:8080 \
	-p 25565:25565 \
	-e MCMA_PASSWORD=YourMother \
	-e MCMA_USERNAME=brahaney \
	-e MCMA_MAXHEAP=1024 \
	-e MCMA_LICENSE=${MCMA_LICENSE} \
	-it \
	--entrypoint=/bin/bash \
	dyncrafty_mcmyadmin

create:
	docker create \
	--name mcmyadmin \
	--restart=always \
	-v /opt/ampdata/:/AMP/.ampdata \
	-p 8080:8080 \
	-p 25565:25565 \
	-e MCMA_PASSWORD=${MCMA_PASSWORD} \
	-e MCMA_USERNAME=${MCMA_USERNAME} \
	-e MCMA_MAXHEAP=8192 \
	-e MCMA_LICENSE=${MCMA_LICENSE} \
	dyncrafty_mcmyadmin

start:
    docker start mcmyadmin