## Dockerfile for Metaproxy service

Build `mpimage` with

    docker build -t mpimage .

Expose to port 9010 (replace as necessary) it:

    docker run -d -p 9010:9000 mpimage
