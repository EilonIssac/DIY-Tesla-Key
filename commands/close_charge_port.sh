token=$(jq -r '.[].sso.access_token' cache.json)
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/charge_port_door_close -H "Authorization: Bearer $token"
