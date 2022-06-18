# igotu2gpx - Docker Image

![Logo](./igotu2gpx-gui.png)

A quick and dirty docker image for https://launchpad.net/igotu2gpx

I am not the orignal developer of igotu2gpx but a mere user.

I've tested dumping from my igotU GT-120 to .gpx, clearing the memory and resetting the settings.

## Example commands

```shell
docker-compose run igotu2gpx info
```

```shell
docker-compose run igotu2gpx dump > output.gpx
```