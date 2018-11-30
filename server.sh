#!/bin/sh
cd /spigot
if [ -n "$EULA" ]; then
    echo "eula=true" > /spigot/eula.txt
fi
java -Xmx1024M -Xms1024M -jar /spigot/spigot.jar
