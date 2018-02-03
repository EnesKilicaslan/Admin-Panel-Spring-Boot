# Admin-Panel-Spring-Boot
Creating admin panel with Spring Boot

**This project is designed to manage the users**


### Requirements:
1. Mysql database
2. Maven
3. Java 1.8



Admin Panel can be able to do the followings:
- retrieve users
- add user
- delete user
- update user

User is an entity, it has first name, last name, user name, password and role fields.

### What I have done until now
- Spring Boot creates rest API, for adding, deleting and updating user


### How to run

Because this is a maven project, you can open the project with your IDE to see codes.
There is a jar file named app, we can use it to see the project in action.
Currently I am using stub( or fake ) database in DAO, so you don't need any configuration for DB.

***After downloaded and extracted the project from github run the following commands***

```sh

cd Admin-Panel-Spring-Boot
java -jar app.jar

```

Then the project will run on tomcat server and will be available for various operations.
You can use browser or postman.
Go to browser and type **http://localhost:8080/users**, you will se list of users.
