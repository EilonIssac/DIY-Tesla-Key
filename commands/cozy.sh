token=$(jq -r '.[].sso.access_token' cache.json)
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/set_temps -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d '{"driver_temp": "26.3", "passenger_temp": "26.3"}'
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/auto_conditioning_start -H "Authorization: Bearer $token"
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/remote_seat_heater_request -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d '{"heater": "front_left", "level": "3"}'
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/remote_seat_heater_request -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d '{"heater": "front_right", "level": "3"}'
curl -X POST https://owner-api.teslamotors.com/api/1/vehicles/3744452732833510/command/remote_steering_wheel_heater_request -H "Authorization: Bearer $token"
