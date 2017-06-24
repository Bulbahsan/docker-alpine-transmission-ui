#!/bin/sh

if [ ! -f "/config/settings.example.json" ]; then
  cp /settings.example.json /config/settings.example.json
fi

/usr/bin/transmission-daemon --foreground --config-dir /config --log-info --peerport 45555 --watch-dir /watch --download-dir /downloads --incomplete-dir /incomplete
