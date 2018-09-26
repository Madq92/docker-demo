Deployment demonstration:
- Build Java project
  - `$ cd $PROJECT_ROOT`
  - `$ mvn clean install
- Build Docker images and deploy to docker swarm
  - `$ cd $PROJECT_ROOT`
  - `$ docker-compose build`
  - `$ docker stack deploy -c docker-compose.yml myapp`