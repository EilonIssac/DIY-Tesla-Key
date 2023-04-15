token=$(jq -r '.[].sso.access_token' cache.json)
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/remote_start_drive -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d '{"password": "Elan1005!"}'
