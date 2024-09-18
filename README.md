# deploy-webDAV_frpc
Deploy webDAV-vhost in LAN with frpc by docker compose.

If you want to customize the location of deploment, configure following variables in `.env`:

* `INSTALL_ROOT_PATH` :  Parent path for deployment.
* `SERVER_NAME`: Directory for deployment at INSTALL_ROOT_PATH .

```bash
./run.sh 
Usage:
./run.sh -c <cmd> -l "<item list>"
eg:
./run.sh -c deploy -l "frpc_webDAV"
Supported cmd:
deploy
Supported items:
frpc_webDAV
```

