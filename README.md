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
