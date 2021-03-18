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

go get -u github.com/tsenart/vegeta
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname


-X POST \
    -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
    -H "Ce-Specversion: 1.0" \
    -H "Ce-Type: dev.knative.samples.helloworld" \
    -H "Ce-Source: dev.knative.samples/helloworldsource" \
    -H "Content-Type: application/json" \
    -d '{"msg":"Hello World from the curl pod."}'


echo "GET http://10.8.30.29" | vegeta attack -header "Host:helloworld-go.serverless.cdn.com" -duration=5s -rate=500  | tee results.bin | vegeta report
echo "GET http://10.8.30.29" | vegeta attack -header "Host:helloworld-go.serverless.cdn.com" -duration=5s | tee results.bin | vegeta report

http://195.219.251.74:8080/gitlab/ipc3/promtrigger-controller-new.git
