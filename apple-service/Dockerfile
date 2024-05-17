# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom index.html to the nginx server
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
