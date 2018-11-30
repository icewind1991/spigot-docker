#!/bin/sh
cd /spigot/runtime
if [ -n "$EULA" ]; then
    echo "eula=true" > /spigot/runtime/eula.txt
fi
java -Xmx1024M -Xms1024M -jar /spigot/spigot.jar
