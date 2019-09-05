# Base Image - google/dart
FROM node:10.16.3-slim

LABEL maintainer="tkikuchi2000@gmail.com" version="0.1.0"

# Install Ionic, Firebase CLI
RUN npm i -g ionic@5.2.7 firebase-tools@7.3.1 

