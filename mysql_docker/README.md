# Running a MYSQL image in docker. 


# Buld and run the Container
```shell
docker build -t mysql_server_workshop . --no-cache
```

Run with (mounted volume) if needed else run normally.
```shell
docker run -it --mount src="$(pwd)",target=/mysql_docker,type=bind  mysql_server_dock /bin/bash
```

Run normally with the exposed port. 
```
sudo docker run -d -p 3306:3306 --name workshop_runner mysql_server_workshop

# move into container
docker exec -it mysql_server_workshop /bin/bash

# inside the container
python3 query_db.py
```

Stop the running container and remove all dangling images
```
docker stop workshop_runner
```

---
# MySql commands

Start and service with 

```shell
sudo service mysql start
```

Update admin password as;
```shell
# Set admin password
mysqladmin -u root password mdapass

# Now call the password to start My SQl
mysql -uroot -p
$ <ENTER PASSWORD>
```


Exit Mysql in docker with `\q`. 



---
# Workshop steps
1. Create basic containers with workdir and without
2. create with `--no-cache` and without it
3. Remove images
4. Recreate 


---
## Some reference links 
- [Volume Permissions](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)
