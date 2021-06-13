# zcore [WIP]
#### A new FiveM framework rebuilt with heavy inspiration from the now MIT Open sourced QBCore

## I WILL NOT CURRENTLY BE GIVING ANY SUPPORT ON THIS REPOSITORY SO IF YOU CHOOSE TO FORK THIS OR USE THIS RIGHT NOW IT'S FULLY ON YOU

Unlike most systems out there this is pretty much aimed to be a server out of the box with everything fairly setup but also focused on a development version and a live version

### FiveM
1. Learn basics from the [FiveM start guide](https://docs.fivem.net/docs/server-manual/setting-up-a-server/)
2. Get the [Artifact build](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/) Currently using `3922` (one with the most recent txadmin)
3. Unzip it and put it under `/artifact` in the main directory.
4. You're gonna need a [Cfx.re key](https://keymaster.fivem.net/) for running locally. *You can only run 1 server off this key

### MariaDB
For simplicity during development I've decided to use a local standalone version of MariaDB
1. [Download MariaDB](https://downloads.mariadb.org/mariadb/+releases/) as a zip **not as installer** (unless you wanna have it running all the time as a system service). Currently I'm using `10.5.9`
2. Copy the contents into a folder called `/mariadb` in the main directory.

### Extras
* [HeidiSQL](https://www.heidisql.com/) Probably **the best** SQL application out there (Get fucked PHPMyAdmin)
* [VSCode](https://code.visualstudio.com/) if you don't already have it (if you can see this repository you should already have it..)
For the Map and Texture people:
* [CodeWalker](https://www.gta5-mods.com/tools/codewalker-gtav-interactive-3d-map)
* [Texture Toolkit](https://www.gta5-mods.com/tools/texture-toolkit)

## Basics

I've structured this project to be as development friendly as possible so it's organized in such a way that you can run a local dev server or the live server without making any changes and causing headaches down the line by accidently pushing dev configs to live or anything


### Structure

```
+-- artifact/              - FiveM source
+-- mariadb/               - MariaDB source
+-- server/                - main directory for the server and what gets sent (essentally www)        
|   +-- resources/         - Core resource directory for all the server modules
|   |   +-- [assets]/      - All streaming assets
|   |   +-- [dev]/         - Dev only scripts
|   |   +-- [standalone]/  - scripts that are independent
|   |   +-- [zcore]/       - the core and scripts that rely on it
|   +-- secrets/           - For cfgs that contain private information (unsynced)
|   +-- dev.cfg            - config for a dev/test server
|   +-- live.cfg           - config for a live server
|   +-- shared.cfg         - shared config for dev and live
+-- start-dev.bat          - local database, no logs, no fivem directory listing
+-- start-live.bat         - live database, logs and broadcasting to fivem directory
```

## Resources

### Core

### Standalone
- [dpemotes](https://github.com/andristum/dpemotes) - Modified

### MLOs / Maps
- [Gabz Mission Row Police Department](https://www.gabzv.com/products/mission-row-police-department) ²
- [Gabz Pillbox Hospital](https://www.gabzv.com/products/pillbox-hospital-v2) ²
- [Gabz Hub](https://www.gabzv.com/products/hub) ²

**²You must purchase this product and add it in yourself. Please don't steal assets that people work hard on ♥**

## Thanks

KASH4 (The original QBus developer) has released the original qbus into the open source [proof here](https://github.com/KASH4/qbus/issues/1)
QBCore is currently being actively worked on with MIT License status [here](https://github.com/qbcore-framework)