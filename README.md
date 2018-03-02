# docker-openbsd_arm64-tftpboot

## Build:
sudo docker build --network=host .
## Run:
sudo docker run -it --net=host $( sudo docker images| awk 'NR==2 {print $(3)}')

