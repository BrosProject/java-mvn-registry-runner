FROM alpine:latest

# Install Java and Maven
RUN apk add openjdk17 && apk add maven && export PATH=${PATH}:${JAVA_HOME}/bin

# Install Bash and GitHub
RUN apk add bash && apk add git

COPY setCredentials.sh /data/setCredentials.sh
