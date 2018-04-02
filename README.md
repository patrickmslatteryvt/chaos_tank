# Chaos Tank

The most fun you'll have obliterating your production cluster!

## DISCLAIMER

Whatever you shoot are the pods in the `default` namespace. Please make sure you are not actually killing your environments!

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
  --hostname=chaos_tank \
  --volume=/home/pslattery/.kube/config:/go/kube-config \
  pslattery/chaos_tank:latest
```


## Example

![Alt text](target_destroyed.png?raw=true "Target destroyed")
