# Step 1: Use the official Nginx image as a base
FROM nginx:alpine

# Step 2: Create an HTML file
RUN echo '<!DOCTYPE html><html><head><title>Sample Page</title></head><body><h1>aSF</h1></body></html>' > /usr/share/nginx/html/index.html

# Step 3: Expose the port (nginx defaults to 80)
EXPOSE 80

# Step 4: Run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
