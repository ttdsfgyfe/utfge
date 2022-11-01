#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c0d0b75d-9a5f-419e-a413-536a3fc98986"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

