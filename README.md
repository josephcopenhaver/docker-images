# dev-environment container

Image name + label versioning:

```bash
josephcopenhaver/docker-images:dev-environment-<version>
```

Hopping into the latest version container:

```bash
docker pull josephcopenhaver/docker-images:dev-environment-latest
./scripts/init

# customize the content you want to in:
# ./scripts/.state/.bashrc.local
# ./scripts/.state/.bashrc.noninteractive.local

# copy ./scripts/sample.docker-options to ./scripts/.docker-options
# read the new ./scripts/.docker-options and customize accordingly

# copy ./scripts/sample.ssh-options to ./scripts/.ssh-options
# read the new ./scripts/.ssh-options and customize accordingly

./scripts/run
```
