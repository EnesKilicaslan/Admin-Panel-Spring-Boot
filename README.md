# Admin-Panel-Spring-Boot
Creating admin panel with Spring Boot

**This project is designed to manage the users**


### Requirements:
1. Mysql database
2. Maven
3. Java 1.8


This project supply an REST api to add, delete, update and retrieve users from database.


### Things Done
1. Restfull controller
2. Mysql database connection
3. Pagination on Spring Boot
4. Jquery-Ajax requests to list, add and delete users without refreshing the page


### How to open the project on IDE

Because this is a maven project, you can open the project with your IDE to see codes.
click File-> open project from file system , and select this project.

### How to run

***Firstly, you must have a mysql server up and running.***

change your working directory to project folder
```sh
cd Admin-Panel-Spring-Boot
```

you can run mysql server on mac via following command
```sh
mysql.server start
```

now you need to login
```sh
mysql -u root -p
```
then type your password

So far so good,

There are two sql scrips named **create-user.sql** and **table.sql**. We need to execute
them on the command line (or you can use mysql workbench). **You need to use your path**

```sh
source some-path/Admin-Panel-Spring-Boot/create-user.sql;
source some-path/Admin-Panel-Spring-Boot/table.sql;
```

if you're ok till now, you can take a deep breath because we have one last step and
 I am sure that you won't have any problem there.

YAY!, We have a jar file named **app.jar**. We can use it to see the project in action.

run the following command
```sh
java -jar app.jar
```

Then the project will run on tomcat server and will be available for various operations.

You can use browser or postman.
Go to browser and type **http://localhost:8080/users**, you will se list of users.
