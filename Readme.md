# Dokku Boot

My personal configuration for setting up a fresh Dokku build. I've only tried running this on Digital Ocean, but it should work on other providers.

## Features

- Sets up additional swap
- Updates Dokku and Herokuish
- Adds the Let's Encrypt plugin
- Adds the Postgres plugin

## Usage

```sh
ssh root@<IP_ADDRESS>
curl https://raw.githubusercontent.com/matthewmueller/dokku-boot/master/index.sh | sh
```

## License

MIT
