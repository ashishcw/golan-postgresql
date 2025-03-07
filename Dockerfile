#use official go lang docker image
FROM golang:1.16.3-alpine3.13

#set working directory
WORKDIR /app

#copy all the source code inside the image
COPY . .

#download all the dependencies inside the image
RUN go get -d -v ./...

#build the application
RUN go build -o api .


#expose the port
EXPOSE 8000

#run the executable
CMD ["./api"]




