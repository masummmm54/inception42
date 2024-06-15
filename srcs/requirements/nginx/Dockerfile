# Use a specific version of Nginx with Alpine
FROM nginx:1.21-alpine

# Copy Nginx configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
