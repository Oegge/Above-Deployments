docker run -d --name adguardhome -v adguardhome:/opt/adguardhome/work -v adguardhome:/opt/adguardhome/conf -p 53:53/tcp -p 53:53/udp -p 3000:3000 -p 8080:80 adguard/adguardhome:latest
