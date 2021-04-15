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

global:
  resolve_timeout: 5m
route:
  group_by: ['cluster', 'alertname', 'namespace', 'job', 'pod_name']
  group_wait: 30s
  group_interval: 10m
  repeat_interval: 10m
  receiver: email_config
  routes:
  - match:
      alertname: Watchdog
    repeat_interval: 5m
    receiver: watchdog
receivers:
- name: email_config
  email_configs:
  - to: gayathri.menath@tatacommunications.com
    from: nha.kubernetes.cluster@tatacommunications.com
    send_resolved: true
    smarthost: 10.72.217.36:25
    require_tls: False
    headers:
      Subject: 'Sandbox-mgmt There are {{if gt (.Alerts.Firing | len) 0 }} {{ .Alerts.Firing | len }} firing  alert(s) {{ end }} {{ if and (gt (.Alerts.Firing | len) 0) (gt (.Alerts.Resolved | len) 0 ) }} and {{ end }}{{if gt (.Alerts.Resolved | len) 0 }} {{ .Alerts.Resolved | len }} resolved alert(s) {{ end }}'
    html: "<HTML><BODY> <b>Alerts:</b> <ol> {{ range $index,$_ :=  .Alerts }}<li><b> Status:</b> {{ .Status }}  <br><br><b>AlertId: </b> {{ .Fingerprint }}.{{ .StartsAt.Format `20060102150405` }} <br> <b>Labels:</b> {{ range $key,$value := .Labels }}{{$key}}={{$value}},{{ end }}<br> <br><b> Annotations:</b> {{ range $key,$value := .Annotations }}{{$key}}={{$value}},{{ end }} <br><br><b> StartsAt:</b> {{ .StartsAt }}<br><br><b>CI:</b> DELGCCNHADCLMGTM1 <br><br><b>Customer:</b>  NHA  <br> </li><br> {{end}}</BODY></HTML>"

kind: ESTrigger
apiVersion: functions.tatacommunications.com/v1alpha2
metadata:
  name: function-not-found
  namespace: efk-alerting
spec:
  index: cdn-cloud-01-2021.03.26-*
  ruleType: frequency
  numEvents: 1
  timeUnit: hours
  timeframe: 24
  filterType: match_phrase
  matchPhrase:
    filterKey: log
    filterValue: "Updated Cache"
  funcName: helloworld-go
  
  
  
  
  GET logstash-2019.12.05/_search?size=10000

{

  "query": {

    "match_phrase": {

      

      

    "log": "vm.max_map_count = 262144"

        }

  }
  
  "log": {

        "value": "20.9",

        "flags" : "INTERSECTION|COMPLEMENT|EMPTY"

      }
      
   ansible-playbook -i inventory/optimus-dev/hosts.ini cluster.yml  --tags=monitoring --become --become-user=root --ask-pass -vvv
   
   from cloudevents.http import CloudEvent, to_structured
   #code changed for cloudevent support
            event = CloudEvent(headers, json.dumps(payload, cls=DateTimeEncoder))
            ce_headers, ce_body = to_structured(event)
            response = requests.post(url, data=ce_body, headers=ce_headers,
                                             proxies=proxies, timeout=self.timeout)
                                             
                                             
  CGO_ENABLED=0 python3 setup.py install
  pip install "setuptools>=11.3"
