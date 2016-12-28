#!/bin/bash
AMP=/AMP/ampinstmgr
INSTANCE=/AMP/.ampdata/instances/mcma3
MINECRAFT=${INSTANCE}/Minecraft
MINECRAFT_PERSIST=${INSTANCE}/Minecraft-persist

if [ ! -x ${INSTANCE}/AMP_Linux_x86_64 ];
then
	echo "Creating MCMA3 instance"

	$AMP CreateInstance McMyAdmin mcma3 \
	0.0.0.0 8080 \
	${MCMA_LICENSE} \
	${MCMA_PASSWORD} \
	+Core.Login.Username ${MCMA_USERNAME} \
	+MinecraftModule.Limits.MaxPlayers ${MCMA_MAXPLAYERS:-10} \
	+MinecraftModule.Java.MaxHeapSizeMB ${MCMA_MAXHEAP:-2048}
fi

if [ ! "$(ls -A ${INSTANCE}/Minecraft)" ]; then
    rsync ${MINECRAFT_PERSIST} ${MINECRAFT}
fi

echo "Launching MCMA3"
$AMP -a