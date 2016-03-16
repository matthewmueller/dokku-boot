# Dokku Boot

Quick personal configuration for setting up a fresh Dokku build. I've only tried running this on Digital Ocean (using the dokku droplet in the One-click Apps).

## Features

- Sets up additional swap
- Updates Dokku and Herokuish
- Adds the Let's Encrypt plugin
- Adds the Postgres plugin

## Up & Running with Dokku in 5 minutes

#### I. Setting up Digital Ocean

1. Create a droplet
2. Go to **One-click Apps** and select Dokku
3. Select region and other Digital Ocean specific options
4. Add your SSH key

#### II. Setting up Subdomains

1. Open the IP Address created for you in the browser (example using the terminal: `open http://192.243.249.116`)
2. Choose the domain you'll be deploying to
3. Select the **Use virtualhost naming for apps** option
4. Click **Finish Setup**

#### III. Running Boot

```sh
ssh root@<IP_ADDRESS>
curl -sSL https://raw.githubusercontent.com/matthewmueller/dokku-boot/master/index.sh | bash /dev/stdin
```

**IMPORTANT:** Before running this please inspect the [index.sh](/index.sh) file. You may want to fork and modify to suit your own setup. For a list of plugins you can add, check this out: http://dokku.viewdocs.io/dokku/plugins/

This whole process takes about 5 minutes and you'll basically have a Heroku running on your droplet. Dokku is amazing.

## TODO

- Move to docker-machine & docker-compose workflow
- Remove One-click App dependency

## License

MIT
