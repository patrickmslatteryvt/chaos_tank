#!/bin/bash
set -e

sed -i "s/default/${NS}/g" /go/src/chaos_tank/chaos_tank.go
go run -v chaos_tank.go -kubeconfig /go/kube-config
