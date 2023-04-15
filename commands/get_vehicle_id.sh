token=$(jq -r '.[].sso.access_token' cache.json)
curl -X GET https://owner-api.teslamotors.com/api/1/vehicles -H "Authorization: Bearer $token"
