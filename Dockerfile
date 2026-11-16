# Step 1: Use the official lightweight Nginx Alpine base image
FROM nginx:alpine

# Step 2: Copy the static HTML portfolio into Nginx's default web directory
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 so the container can accept web traffic
EXPOSE 80

# Step 4: Run Nginx in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]
