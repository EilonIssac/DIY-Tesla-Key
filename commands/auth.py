import teslapy
import time
import os

with teslapy.Tesla('[AccountEmail]') as tesla:
    tokens = tesla.fetch_token()
    print(tokens.get('access_token', 0))
    time.sleep(1)
    os.system("cat ./cache.json |  jq -r '.[].sso.access_token' > ./access_token") 
