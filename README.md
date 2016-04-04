## Reverse proxy with nginx

Configures nginx reverse proxy for backend servers.

```bash
docker run -d reallyenglish/rproxy-nginx
docker exec -ti cfg app.example.com app1.example.com app2.example.com
```

Here is how it could be used for blue-green deployment.

```bash
# Deploy the latest release in parallel with the current one
docker exec -ti rproxy1 cfg app-green.example.com app3.example.com app4.example.com
# Check if app-green is working correctly
curl app-green.example.com
# Update the reverse proxy config, app3 and app4 are now blue
docker exec -ti rproxy1 cfg app.example.com app3.example.com app4.example.com
# Wrong version is deployed, rollback
docker exec -ti rproxy1 cfg app.example.com app1.example.com app2.example.com
# Remove config for green
docker exec -ti rproxy1 cfg rm app-green.example.com
```
