token=$(jq -r '.[].sso.access_token' cache.json)
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/window_control -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d '{"command": "vent", "lat": "0", "lon": "0"}'
