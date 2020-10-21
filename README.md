# Summary

This directory holds config files and scripts for deploying multiple Docker images on a single VPS using nginx reverse proxy.

In these config files, it is assumed that the VPS has a directory called `sites`, which holds a `docker-compose.yml` and an `nginx.conf`.

The intended workflow is to build the projects in their respective directories ([Example Project](https://github.com/jsantman29/glowing-chainsaw)). Use the `deploy-prod.sh` in them to load their Docker image on the VPS. Create containers using those images on the VPS and make them live.

# Scripts

## Home Directory

There are scripts you can run from your home directory without logging in to the VPS.

This current configuration attempts to access a VPS that only enables connections with authorized SSH keys.

### `/refresh-sites.sh`

Accesses the VPS, makes containers from the images supported by the `docker-compose.yml`, and makes them live.

### `/update-config.sh`

If you changed the `nginx.conf` or `docker-compose.yml` files outside of the VPS, this attempts to transfer them to it.

## VPS

Run from the working directory on the VPS.

### `docker-compose up -d`

Deploy web applications using images in `docker-compose.yml`.

### `docker-compose down`

Takes down the web applications that were deployed from the `docker-compose.yml`.
