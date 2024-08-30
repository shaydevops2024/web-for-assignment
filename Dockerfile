# Use Nginx image as the base image
FROM nginx

# Remove defaults Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy new web application to nginx
COPY . /usr/share/nginx/html

# Expose to port 80 for tests
EXPOSE 80

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]
