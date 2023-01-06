# donation-socket-repeater
Receives donations from the tracker via a postback URL, and repeats them via a websocket.

# How to run
It's recommended to use Docker to deploy this by running the following commands:
```
docker build -t donation-socket-repeater .
docker run -d -p 127.0.0.1:9090:8080 --env SECRET_KEY=<ADD YOUR OWN SECRET KEY HERE> donation-socket-repeater
```
The server in the container by default listens on the port 8080. It's also highly recommended to generate a random secret key for usage.
