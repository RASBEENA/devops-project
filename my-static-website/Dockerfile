# Use lightweight Nginx image
FROM nginx:alpine

# Copy index.html to Nginx default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Healthcheck to verify Nginx is running
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget --quiet --spider http://localhost/ || exit 1

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
