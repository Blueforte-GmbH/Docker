# Docker
Workshop on Docker and its many applications🐬 



# Buld and run the Container
```shell
docker build -t mysql_server_dock . --no-cache
```

Run with (mounted volume) if needed else run normally.
```shell
docker run -it --mount src="$(pwd)",target=/test_container,type=bind  mysql_server_dock /bin/bash
```



# MySql

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
