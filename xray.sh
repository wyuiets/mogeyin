#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1f3cd129-95a7-4cc8-bc73-fb5333c035d2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

