import-mongo-key:
  cmd.run:
    - name: sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4


update repo:
  cmd.run:
    - name: echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.lis$

mongodb-org:
  pkg.installed

mongodb-service:
  service.running:
    - name: mongod.service
