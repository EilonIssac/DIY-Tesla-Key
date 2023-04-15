import teslapy

with teslapy.Tesla('eilonadelson@me.com') as tesla:
    tokens = tesla.fetch_token()
    print(tokens.get('access_token', 0))
