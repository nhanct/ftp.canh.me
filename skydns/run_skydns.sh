curl -L -XPUT http://172.17.8.101:4001/v2/keys/skydns/config -d value='{"nameservers": ["8.8.8.8:53","8.8.4.4:53"]}'
docker run -d --name skydns2 -p 172.17.8.101:53:53/udp -e ETCD_MACHINES='http://172.17.8.101:4001,http://172.17.8.102:4001,http://172.17.8.103:4001' nhanct/skydns:latest -addr=0.0.0.0:53

