# Le but :
Avoir un projet en usine avec gitlab & jenkins

que jenkins lance le build & créer l’image docker

pour pouvoir lancer le docker-compose à côté à partir du docker-compose.yml


# Pré-requis :
 - java8
 - maven3
 - jenkins


# Modop
A partir du lab “ci” du quel on n’utilise que gitlab
 - ```curl -o jenkins.war http://mirrors.jenkins.io/war-stable/latest/jenkins.war```
 - le lancer : ```java -jar jenkins.war  --webroot=./jenkins --httpPort=8090 --ajp13Port=-1```
 - Se créer un compte dans gitlab
 - créer un repo mysql-jdbc-vaadin
 - pusher le projet récupéré de gihtub dans gitlab https://github.com/ValtechTechno/mysql-jdbc-vaadin
 - Ajouter dans jenkins le projet correspondant
 - url du repo git : http://localhost:800/<username>/mysql-jdbc-vaadin/
 - ajouter 2 étapes
 - top level maven target : clean install
 - docker build -t mysql-jdbc-vaadin .
une fois que le build passe, dans le dossier du projet on peut faire ```docker-compose up```
