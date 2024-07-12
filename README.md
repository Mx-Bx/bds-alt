# Big Data Project

# Cluster

## Architecture

![cluster Architectue](resources/img/project-big-data.png)

## Setup

    $ docker build -t jupyter jupyter/.
    $ docker build -t theia theia/.
    $ docker build -t hive hive/.
    $ docker build -t spark spark/.

    $ docker volume create --name=shared-workspace

## Run Cluster

    $ docker-compose up

## Access

### Service Ports
|Container|Tool|URL|User|Password|
|-|-|-|-|-|
|hadoop|Default FS|http://hive:54310|||
|pg_container|Postgres DB|http://pg_container:5432|root|root|
|spark|Spark Master|http://spark:7077|||

### Web GUI Ports
|Container|Tool|URL|User|Password|
|-|-|-|-|-|
|theia|Theia IDE|http://localhost:3000|||
|jupyter|Jupyter Lab|http://localhost:8888|||
|jupyter|sparkr-notebook application UI|http://localhost:4040|||
|hadoop|NameNode|http://localhost:9870|||
|hadoop|Yarn RM web application|http://localhost:5349|||
|spark|Spark Master GUI|http://localhost:8080|||
|spark|Spark Worker GUI|http://localhost:8081|||
|pgadmin4_container|Postgres GUI|http://localhost:5050|admin@admin.com|root|
