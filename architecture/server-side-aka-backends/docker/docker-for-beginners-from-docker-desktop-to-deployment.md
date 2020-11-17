# Docker For Beginners: From Docker Desktop to Deployment

docker-for-beginners-from-docker-desktop-to-deployment.md

*   https://www.youtube.com/watch?v=pGYAg7TMmp0&ab_channel=LearnCode.academy

*   https://www.youtube.com/watch?v=i7ABlHngi1Q&frags=wn&ab_channel=TravisMedia

*   image

    *   blueprint

    *   layered

*   container

    *   running image

*   benefits

    *   simplicity

    *   collaboration (on a team)

    *   flexibility

    *   totality

vm vs container

    each instance of the vm has os installed



https://www.vagrantup.com/

Vagrant is an open-source software product for building and maintaining portable virtual 
software development environments; e.g., for 
VirtualBox, KVM, Hyper-V, Docker containers, VMware, and AWS


docker linode

https://www.linode.com/docs/applications/containers/install-docker-ce-ubuntu-1804/

https://www.linode.com/docs/applications/containers/how-to-use-dockerfiles/

https://www.linode.com/docs/applications/containers/how-to-install-docker-and-pull-images-for-container-deployment/

*   container vs virtual machine

    *   virtual machine

        *   each instance has OS complete
        *   hardare is virtualized through hypervisor

    *   container
        *   does not have OS
        *   virtalizes OS
        *   more portable

docker 

    software for managing containers


app -> image

    in app folder - create Dockerfile
    https://www.marksei.com/a-comprehensive-guide-to-dockerfiles/
    https://gist.github.com/adamveld12/4815792fadf119ef41bd
    https://docs.docker.com/engine/reference/builder/


    https://github.com/rodgtr1/youtube-stats

    https://github.com/rodgtr1/youtube-stats/blob/master/Dockerfile

```
FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
```


To build image, cd into directory and run docker build . -t youtubereactapp:latest
To run container enter docker run --rm -it -p 3000:3000/tcp youtubereactapp:latest



