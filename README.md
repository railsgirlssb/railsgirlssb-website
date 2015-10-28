# Rails Girls SB

## Deployment

Check which server ist active:
```
cf apps | grep railsgirlssb.de.a9sapp.eu | cut -d ' ' -f 1
```

Use the deactivated app name for the deployment:
```
cf push railsgirlssb-green
```

Check whether everything works correctly. Afterwards make map domains with:
```
./bin/deploy.sh green
```

## Environment Variables

| Variable | Values | Description |
-----------------------------------
| APP_SIGN_UP_CLOSED | *yes* or anything else | If set to *yes*, sign up is disabled. |
