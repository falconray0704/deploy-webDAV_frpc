# 1. Configurations for initialization

## 1.1 Specify following variables in `.env` file for all data storage of webDAV application.

* `WEBDAV_DATAS_DIR` : Datas root directory.

## 1.2 Specify following variables in `cfgs/frpc.toml` file for frp.
Just refer to official document.
The most required variables are:

* `serverAddr` : Public IP address of your server.
* `serverPort` : Port of frps listens for frpc connection.

* `auth.token` : token for authentication between frpc and frps, must be same as Frps's configuration.
* `subdomain` : 3rd subdomain for frps routing (eg: drawio for bookstack.domain.com).

* `secretKey` : key of stcp for Frpc's visitor. 

# 2. Initial environments for first time booting
```bash
./1_init.sh
```

# 3. Install certificates

Install certificates for tls between frpc and frps to `$INSTALL_ROOT_PATH`/`SERVER_NAME`/`CERTS_DIR` which defined in `.env` file.


## 3.1 Obtain certificates

Refer `https://github.com/falconray0704/deploy-bookstack_frps/blob/main/src/README.md` to generate selfsigned certificates.
Install forllowing file:

* `client.crt`
* `client.key`
* `rootCA.crt`

# 4. Launch:

```bash
docker compose up -d
```

