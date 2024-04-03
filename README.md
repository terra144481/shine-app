# shine-app
this is test task

1. Create Dockerfile. It defining how to build Docker image.
2. Build a container per dockerfile.  
``sudo docker build -t shiny-app . ``  

***Outputs:***  
```
terra@DESKTOP-NFU8E2P:/app/shine-app$ sudo docker build -t shiny-app .
[+] Building 7.6s (11/11) FINISHED                                                                          docker:default
 => [internal] load build definition from Dockerfile                                                                  0.1s
 => => transferring dockerfile: 465B                                                                                  0.0s 
 => [internal] load metadata for docker.io/rocker/r-ver:latest                                                        7.3s 
 => [auth] rocker/r-ver:pull token for registry-1.docker.io                                                           0.0s
 => [internal] load .dockerignore                                                                                     0.1s
 => => transferring context: 2B                                                                                       0.0s 
 => [1/5] FROM docker.io/rocker/r-ver:latest@sha256:1478c0bd3dfc26618eb032fa86ba969bd497d1752786f4b89dcc4c6f98d9f2d8  0.0s 
 => [internal] load build context                                                                                     0.0s
 => => transferring context: 1.55kB                                                                                   0.0s 
 => CACHED [2/5] WORKDIR /shiny-app                                                                                   0.0s 
 => CACHED [3/5] RUN R -e "install.packages('shiny')"                                                                 0.0s 
 => CACHED [4/5] RUN R -e "install.packages(c('dplyr', 'ggplot2', 'gapminder'))"                                      0.0s 
 => CACHED [5/5] COPY app.R /home/shiny-app/app.R                                                                     0.0s 
 => exporting to image                                                                                                0.0s 
 => => exporting layers                                                                                               0.0s 
 => => writing image sha256:be8b5852f825b4f0bb40b125002f41481ffa7799b84fceea929858bd555fe5ab                          0.0s 
 => => naming to docker.io/library/shiny-app                                                                          0.0s 
```

3. Create a container from the newly created image ("shiny-app") and run it.  
``sudo docker run -p 8080:8080 shiny-app``

***Outputs:***  
```
terra@DESKTOP-NFU8E2P:/app/shine-app$ sudo docker run -p 8080:8080 shiny-app

Listening on http://0.0.0.0:8080
```

