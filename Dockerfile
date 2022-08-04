#base image
FROM openjdk:8

#create new app directory
#RUN command executes commands for image
RUN mkdir "/app"

#copy the app files from host machine to image files
COPY ./out/production/hello-world-docker /app

#set the directory for executing future commands
WORKDIR /app

#run the main class
CMD java Main

