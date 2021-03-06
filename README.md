Tomcat7
=======
Base docker image to run a Tomcat application server


Image tags
----------
```
    fnubhupen/tomcat7:latest
```
Usage
-----

To create the image `fnubhupen/tomcat7`, execute the following command :

    docker build -t fnubhupen/tomcat7 .
    
To create the image from github:

    docker build -t fnubhupen/tomcat7 git://github.com/Bhupendra2020/tomcat7.git

To run the image and bind to port :

    docker run -d -p 8080:8080 fnubhupen/tomcat7



The first time that you run your container, a new user `admin` with all privileges 
will be created in Tomcat with a random password. To get the password, check the logs
of the container by running:

    docker logs <CONTAINER_ID>

You will see an output like the following:

    ========================================================================
    You can now connect to this Tomcat server using:

        admin:b1uKcRK3r6SF

    Please remember to change the above password as soon as possible!
    ========================================================================

In this case, `b1uKcRK3r6SF` is the password allocated to the `admin` user.

You can now login to you admin console to configure your tomcat server:

    http://0.0.0.0:8080/manager/html
    http://0.0.0.0:8080/host-manager/html


Setting a specific password for the admin account
-------------------------------------------------

If you want to use a preset password instead of a random generated one, you can
set the environment variable `TOMCAT_PASS` to your specific password when running the container:

    docker run -d -p 8080:8080 -e TOMCAT_PASS="mypass" fnubhupen/tomcat7

You can now test your deployment:

    http://0.0.0.0:8080/

Done!
