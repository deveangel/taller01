#build
cd retobase-nodejs
docker run -v /home/docker/talleres_desarrollo_agil/retobase-nodejs:/opt node:13.1.0-alpine sh -c "cd /opt && npm install"

#Delivery
docker build -t demo01:v01 .

#Deployment
cd ../taller02/
docker-compose down --remove-orphans
docker-compose up

#Monitoring
sleep 10
docker-compose ps

