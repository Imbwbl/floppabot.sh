#!/usr/bin/env bash
token=""
channelid=""

while :; do
curl 'https://discord.com/api/v9/channels/'$channelid'/messages' \
  -H 'authorization: '$token'' \
  -H 'content-type: application/json' \
  --data-raw '{"content":"https://bigfloppa.net/gallery/images/floppa'$[ $RANDOM % 204 + 1 ]'.jpg","nonce":"","tts":false}' \
  --compressed;
sleep 2s;
done
