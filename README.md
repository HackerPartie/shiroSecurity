shiroSecurity
=============

Prerequesites:  
maven 3  
jdk 7  
mysql 

DB Setup
========

Login in to your mysql-server, then create a database:

    create database <db_name>;
    
after that, run the sample.sql given with this sample-app on your new database:

    mysql -u <your_mysql_login> -p <db_name> < sample.sql
    
Start this app
==============

For development mode our shiroSecurity sample-app is configured to use jetty at port 8081.  
mvn jetty:run  
point your browser to  
http://localhost:8081  

Now play around a little, register a new user, login, logout and have fun.

