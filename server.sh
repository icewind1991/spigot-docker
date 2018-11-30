#!/bin/sh

if [ -n "$EULA" ]; then
    echo "eula=true" > /eula.txt
fi
java -Xmx1024M -Xms1024M -jar /spigot.jar
