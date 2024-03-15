# NGINX Installation and Configuration

## Installing NGINX

### Ubuntu/Debian:

```bash
sudo apt update
sudo apt install nginx
```
## Staring Nginx 

```bash
sudo systemctl start nginx   
```

## Configuring NGINX for Cloud Environment

### Create NGINX Configuration File
Create a new NGINX configuration file (e.g., nginx.conf) with the following content:
```bash
server {
    listen 80;
    server_name example.com;

    location / {
        proxy_pass http://localhost:3000;  # Replace with your application's address
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```
Adjust the configuration as needed for your application.

### Testing NGINX Configuration

```bash
sudo nginx -t
```

### Reloading NGINX
If the test is successful, reload NGINX to apply the changes:
```bash
sudo systemctl reload nginx  
```

### Verify Application Access
Ensure that your application is running and accessible via the specified address (e.g., http://localhost:3000 in the example configuration).


### Adjust Configuration
Adjust the NGINX configuration file as needed based on your application's requirements.

