## Usage

### Build

docker build -t pproxy_docker:latest .

### Run

docker run -itd -p 8080:8080 --name pp --restart unless-stopped pproxy_docker:latest

or

docker run -itd -p 33080:33080 --name pps --restart unless-stopped pproxy_docker:latest -l socks://:33080/#user:PWD -vv
