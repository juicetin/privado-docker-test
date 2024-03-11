docker build -t privado-test .

# running the below throws error:
# Received error: Error response from daemon: invalid mount config for type "bind": bind source path does not exist: /root/.privado/keys/user.key
docker run -v /home/me/.privado/:/root/.privado/ -v /var/run/docker.sock:/var/run/docker.sock privado /privado/privado scan .
# docker run --user 1000 -v /home/me/.privado/:/root/.privado/ -v /var/run/docker.sock:/var/run/docker.sock privado /privado/privado scan .
# docker run --user 1000 -v /var/run/docker.sock:/var/run/docker.sock privado /privado/privado scan .

# when checking for that file, it exists (after populating it from local)
# docker run -v /home/me/.privado/:/root/.privado/ -v /var/run/docker.sock:/var/run/docker.sock privado ls /root/.privado/keys/user.key
# docker run -v /home/me/.privado/:/root/.privado/ -v /var/run/docker.sock:/var/run/docker.sock privado cat /root/.privado/keys/user.key
