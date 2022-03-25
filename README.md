# Docker-LAMP

## tltr
A simple Docker LAMP setup for dev / test

## how-to
1) clone this repository
2) start docker using docker-compose up -d (-d for detached mode) and wait until everything is finished

# start using the stack
+ add some files into the www folder inside this directory (e.g. index.html)
+ http://localhost for the website and view the added index.html
+ http://localhost:8000 for phpmyadmin



### Folders
- config: all config settings for apache / php / maria-db
- db*: database files for persistance
- www*: www folder from container:/var/www/html 

### Additional Info:
- phpmyadmin running on port 8000

*: created on startup
