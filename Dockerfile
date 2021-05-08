#Download Alpine Docker Image (alpine OS WITHOUT any kernel because containers use the kernel of the host machine) 
FROM alpine 
#Install PHP inside the container (PHP is our app) (in alpine) 
RUN apk add php 
# Create folder  /app inside container 
WORKDIR /app
# Copy source code into the container 
COPY src/ /app 
# run following command inside container 
# php -f index.php -S 0.0.0.0:8080 
# Run the following command 
ENTRYPOINT ["php"]  
# pass these arguements to the command 
CMD ["-f index.php",  "-S",  "0.0.0.0:8080"]
# With / Without brackets 
# Tell Docker to expose port 8080 inside the container (not accessible from the outside) 
EXPOSE 8080
