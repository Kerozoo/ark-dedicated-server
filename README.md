## How to run

- Set your server settings in docker-compose.yml (The following is the default)

```
MAP_NAME: TheIsland
SERVER_NAME: server_name
JOIN_PASSWORD: join_password
ADMIN_PASSWORD: admin_password
```

- Build image (It takes about 10 minutes for installing ark-dedicated-server)

```
docker-compose build
```

- Start server

```
docker-compose up
```

- Access server in steam client

    - View -> Servers -> FAVORITES -> ADD A SERVER
    - yourIP:27015 or localhost:27015

## Additional ark settings

- Edit the exec.sh for additional settings. For example, PVE server enabled

```diff
- /home/steam/ark-dedicated/ShooterGame/Binaries/Linux/ShooterGameServer ${MAP_NAME}?listen?SessionName=${SERVER_NAME}?ServerPassword=${JOIN_PASSWORD}?ServerAdminPassword=${ADMIN_PASSWORD} -server -log
+ /home/steam/ark-dedicated/ShooterGame/Binaries/Linux/ShooterGameServer ${MAP_NAME}?listen?SessionName=${SERVER_NAME}?ServerPassword=${JOIN_PASSWORD}?ServerAdminPassword=${ADMIN_PASSWORD}?serverPVE=True -server -log
```

- Restart server

  - Stop the container
    ```
    Control + V
        or
    docker-compose stop
    ```

  - Start the container
    ```
    docker-compose up
    ```
