# Gomplate Container
Gomplate tool Docker container.

# Table Of Contents
- [Overview](#overview)
- [Development](#development)
- [Deployment](#deployment)

# Overview
Docker container which runs the [Gomplate](https://gomplate.hairyhenderson.ca/) 
template tool.  

Pass arguments as you normally would to the Gomplate tool.  

Mount volumes so the tool can have access to your files

```
docker run \
	-v "$(pwd)/templates:/templates" \
	-v "$(pwd)/results:/results" \
	--rm \
	noah-huppert/gomplate \
	--input-dir /templates \
	--output-dir /results
```

# Development
To build the Docker image run:

```
make
```

This build tag the image `dev`.  

To build the image with a specific tag run:

```
make TAG="<tag>"
```

# Deployment
To push the Docker image to the registry by running:

```
make push
```
