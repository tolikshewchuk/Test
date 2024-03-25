# Use an official Nginx or Apache image
FROM nginx:latest

# Copy the custom index.html file to the appropriate location
COPY index.html /usr/share/nginx/html/

# Expose port 88 to the outside world
EXPOSE 88

# Change default port of nginx
RUN sed -i 's/listen\(.*\)80;/listen 88;/' /etc/nginx/conf.d/default.conf

# CMD statement to start Nginx (default behavior of the nginx image)
CMD ["nginx", "-g", "daemon off;"]
