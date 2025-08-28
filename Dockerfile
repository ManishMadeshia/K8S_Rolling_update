# Use the official nginx stable image
FROM nginx:stable-alpine

# Remove default html and add our site
RUN rm -rf /usr/share/nginx/html/*

# Copy site files into nginx wwwroot
# Put index.html and rolling-update-v2.html (and any assets) in the same folder as this Dockerfile
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Use default nginx command
CMD ["nginx", "-g", "daemon off;"]
