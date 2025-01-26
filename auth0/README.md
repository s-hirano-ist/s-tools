# Auth0 settings backups

## Initial setups

```bash
npm install -g auth0-deploy-cli
cp config.sample.json config.json # add necessary envs.
```

## Generate backups

```bash
a0deploy export --format=yaml --output_folder=production --config_file ./config.json
```
