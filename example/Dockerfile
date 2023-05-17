FROM busybox:latest

WORKDIR /pepe

RUN touch example.txt

RUN echo "This is my example" > example.txt

ENTRYPOINT ["cat", "example.txt"]