token=$(jq -r '.[].sso.access_token' cache.json)
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/actuate_trunk -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d '{"which_trunk": "front"}'
