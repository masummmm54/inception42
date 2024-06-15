# Use a specific version of Nginx with Alpine
FROM nginx:1.21-alpine

# Copy Nginx configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose port 443
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
