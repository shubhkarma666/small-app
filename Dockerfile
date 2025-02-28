# Use Nginx as base image
FROM nginx:alpine

# Copy HTML and assets to Nginx directory
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
