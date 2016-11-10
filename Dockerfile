FROM golang:1.7
EXPOSE 8888
WORKDIR /go/src/app
COPY . /go/src/app

RUN chmod a+x .shipped/build .shipped/run .shipped/test

RUN [".shipped/build"]
CMD .shipped/run
