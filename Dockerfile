FROM golang
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
RUN go build -o gomock main.go
EXPOSE 8080
CMD ["./gomock"]