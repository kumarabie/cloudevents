cd $GOPATH/src/k8s.io/code-generator

 ./generate-groups.sh all   "tclgrafana/pkg/dashboard/client"  "tclgrafana/pkg/dashboard/apis"  dashboard:v1alpha1


 cd $GOPATH/src/tclgrafana


export GO111MODULE=on
export GOROOT=/usr/local/go
export GOPATH=/home/KANNAN
export GOPATH=/home/Kumar
export PATH=$PATH:$GOROOT/bin:$GOBIN
go build
docker build -t kumarabby/dashdemo:0.1 -f Dockerfile .
docker tag tclgrafana:0.1  mgmtserver.ipc3dev.com:5000/tclgrafana:0.1
docker push kumarabby/dashdemo:0.1
