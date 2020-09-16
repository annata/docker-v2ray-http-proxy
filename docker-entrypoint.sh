#!/bin/sh
CMD='{"inbounds":[{"port":'
if [ $PORT ];then
	CMD=${CMD}${PORT}
else
	CMD=${CMD}'8080'
fi
CMD=${CMD}',"protocol":"http","settings":{'
if [ $USERNAME ];then
	if [ $PASSWORD ];then
	    CMD=${CMD}'"accounts":[{"user":"'${USERNAME}'","pass":"'${PASSWORD}'"}]'
    fi
fi
CMD=${CMD}'}}],"outbounds":[{"protocol":"freedom","settings":{}}]}'
echo $CMD > /v2ray/config.json
exec /v2ray/v2ray -config=/v2ray/config.json