## Reverse proxy with nginx

Configures nginx reverse proxy for backend servers.

```bash
docker run -d reallyenglish/rproxy-nginx
docker exec -ti webapp.example.com app1.internal.example.com app2.internal.example.com
docker exec -ti mob.xyz.com backend1.xyz.com:3000 backend2.xyz.com:3000
```
