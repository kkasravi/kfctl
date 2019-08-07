module github.com/kubeflow/kfctl/v3

require (
	bitbucket.org/ww/goautoneg v0.0.0-20120707110453-75cd24fc2f2c // indirect
	cloud.google.com/go v0.38.0
	github.com/NYTimes/gziphandler v1.1.1 // indirect
	github.com/aws/aws-sdk-go v1.15.78
	github.com/cenkalti/backoff v2.1.1+incompatible
	github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f // indirect
	github.com/deckarep/golang-set v1.7.1
	github.com/docker/distribution v2.7.1+incompatible // indirect
	github.com/docker/docker v1.13.1 // indirect
	github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c // indirect
	github.com/elazarl/go-bindata-assetfs v1.0.0 // indirect
	github.com/emicklei/go-restful-swagger12 v0.0.0-20170926063155-7524189396c6 // indirect
	github.com/evanphx/json-patch v4.0.0+incompatible
	github.com/fatih/camelcase v1.0.0 // indirect
	github.com/ghodss/yaml v1.0.0
	github.com/go-kit/kit v0.8.0
	github.com/go-openapi/jsonpointer v0.17.0
	github.com/go-openapi/jsonreference v0.17.0
	github.com/go-openapi/spec v0.19.2
	github.com/go-openapi/strfmt v0.18.0 // indirect
	github.com/go-openapi/swag v0.17.0
	github.com/go-openapi/validate v0.18.0 // indirect
	github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d
	github.com/golang/protobuf v1.3.1
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/hashicorp/go-getter v1.0.2
	github.com/imdario/mergo v0.3.7
	github.com/kr/pty v1.1.3 // indirect
	github.com/kubeflow/kubeflow/components/profile-controller v0.0.0-20190614045418-7ca3cfb39368
	github.com/mitchellh/go-homedir v1.1.0
	github.com/onrik/logrus v0.2.1
	github.com/onsi/ginkgo v1.7.0
	github.com/onsi/gomega v1.4.3
	github.com/opencontainers/go-digest v1.0.0-rc1 // indirect
	github.com/otiai10/copy v1.0.1
	github.com/otiai10/curr v0.0.0-20190513014714-f5a3d24e5776 // indirect
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v0.9.2
	github.com/prometheus/common v0.2.0
	github.com/sirupsen/logrus v1.3.0
	github.com/spf13/afero v1.2.2
	github.com/spf13/cobra v0.0.4
	github.com/spf13/viper v1.3.2
	golang.org/x/crypto v0.0.0
	golang.org/x/net v0.0.0-20190613194153-d28f0bde5980
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	golang.org/x/time v0.0.0-20181108054448-85acf8d2951c
	google.golang.org/api v0.6.0
	google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/square/go-jose.v2 v2.3.1 // indirect
	gopkg.in/src-d/go-git.v4 v4.12.0
	k8s.io/api v0.0.0-20190803060717-3ce214556aa9
	k8s.io/apiextensions-apiserver v0.0.0-20190228180357-d002e88f6236
	k8s.io/apimachinery v0.0.0-20190802060556-6fa4771c83b3
	k8s.io/apiserver v0.0.0-20190228174905-79427f02047f
	k8s.io/cli-runtime v0.0.0-00010101000000-000000000000 // indirect
	k8s.io/client-go v0.0.0-20190802021151-fdb3fbe99e1d
	k8s.io/cloud-provider v0.0.0-20190803062430-3d5636296037 // indirect
	k8s.io/cluster-bootstrap v0.0.0-20190802024125-9150a5ba960c // indirect
	k8s.io/csi-api v0.0.0-20190313123203-94ac839bf26c // indirect
	k8s.io/kube-aggregator v0.0.0-20190228175259-3e0149950b0e
	k8s.io/kube-openapi v0.0.0-20190709113604-33be087ad058
	k8s.io/kubernetes v1.13.4
	k8s.io/utils v0.0.0-20190801114015-581e00157fb1 // indirect
	sigs.k8s.io/controller-runtime v0.1.12
	sigs.k8s.io/kustomize v2.0.3+incompatible
)

replace (
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v9.1.0+incompatible
	github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.0.5
	github.com/evanphx/json-patch => github.com/evanphx/json-patch v0.0.0-20190203023257-5858425f7550
	github.com/go-openapi/jsonpointer => github.com/go-openapi/jsonpointer v0.17.0
	github.com/go-openapi/jsonreference => github.com/go-openapi/jsonreference v0.17.0
	github.com/go-openapi/spec => github.com/go-openapi/spec v0.18.0
	github.com/go-openapi/swag => github.com/go-openapi/swag v0.17.0
	github.com/kubeflow/kubeflow/components/profile-controller => github.com/kubeflow/kubeflow/components/profile-controller v0.0.0-20190614045418-7ca3cfb39368
	github.com/mitchellh/go-homedir => github.com/mitchellh/go-homedir v1.0.0
	github.com/russross/blackfriday => github.com/russross/blackfriday v1.5.2-0.20180428102519-11635eb403ff // indirect
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20181203042331-505ab145d0a9
	k8s.io/api => k8s.io/api v0.0.0-20190222213804-5cb15d344471
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20190228180357-d002e88f6236
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190221213512-86fb29eff628
	k8s.io/apiserver => k8s.io/apiserver v0.0.0-20190228174905-79427f02047f
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20190228180923-a9e421a79326
	k8s.io/client-go => k8s.io/client-go v0.0.0-20190228174230-b40b2a5939e4
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.0.0-20190228175259-3e0149950b0e
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20181109181836-c59034cc13d5
	k8s.io/kubernetes => k8s.io/kubernetes v1.13.4
	sigs.k8s.io/application => sigs.k8s.io/application v0.0.0-20190404151855-67ae7f915d4e
	sigs.k8s.io/controller-runtime => sigs.k8s.io/controller-runtime v0.1.12
	sigs.k8s.io/kustomize => sigs.k8s.io/kustomize v2.0.3+incompatible
)
