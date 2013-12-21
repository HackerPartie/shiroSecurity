shiroSecurity
=============

Prerequesites:  
maven 3  
jdk 7  
mysql 

Setting up the Database:  
create a new mysql-user shiro with password shiro  
login in with your new user:
    mysql -u shiro -p  
    create database hacker_partie;
    quit;
you can use different credentials and names, you only have to change it also in the code!
 
now run the sample.sql:  
    mysql -u shiro -p shiro < sample.sql

create directory config in the root path of your application  
and put a database.properties in there  
    jdbc.url = jdbc:mysql://localhost:3306/<databasename>
    jdbc.driver = com.mysql.jdbc.Driver
    jdbc.user = <your_user "shiro" in this example>
    jdbc.password = <your_password "shiro" in this example>
  
the config path is in .gitignore  
and so the db credentials are not publicly

