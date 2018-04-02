# Chaos Tank

The most fun you'll have obliterating your production cluster!

## DISCLAIMER

Whatever you shoot are the pods in the `default` namespace. The Dockerized version will shoot containers in whatever namespace you put in the `NS` env var.

Please make sure you are not actually killing your environments!

## Usage

> NOTE: Requires golang v1.7+ for the `context` package

```
go get
go run chaos_tank.go -kubeconfig ~/.kube/config
```

Or in a container:

```
docker container run \
  -it \
  --rm \
  --env=NS=demos-words \
  --name=chaos_tank \
  --volume=${HOME}/.kube/config:/go/kubeconfig \
  patrickmslatteryvt/chaos_tank:latest
```


## Example

![Alt text](target_destroyed.png?raw=true "Target destroyed")
