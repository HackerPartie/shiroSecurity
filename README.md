shiroSecurity
=============

Prerequesites:  
maven 3  
jdk 1.6 or higher  
mysql 

### DB Setup


Login in to your mysql-server and create a database. For this example we took hacker_partie as db_name and shiro as user and shiro as password.
Create a conf directory in root path of this application and put a database.properties in there. 

    jdbc.url = jdbc:mysql://localhost:3306/hacker_partie
    jdbc.driver = com.mysql.jdbc.Driver
    jdbc.user = shiro
    jdbc.password = shiro

In src/main/webapp/WEB_INF you find the shiro.ini, where the db-credentials are listed again.
It is a bit stupid putting the db-credentials twice in one project, we will fix this in future.
    
After that, run the sample.sql given with this sample-app on your new database:

    mysql -u shiro -p hacker_partie < sample.sql
    
### Start this app


For development environment our shiroSecurity sample-app is configured to use jetty at port 8081.  
mvn jetty:run  
point your browser to  
http://localhost:8081  
But it should also work well with tomcat7. Let us know, if something is wrong.

Now play around a little, register a new user, login, logout and have fun.

