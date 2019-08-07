package main_test

import (
  "github.com/kubeflow/kfctl/v3/cmd/kfctl/cmd"
  "github.com/onsi/ginkgo"
  rbacv1beta1 "k8s.io/api/rbac/v1beta1"
  "k8s.io/apimachinery/pkg/runtime/schema"
  clientset "k8s.io/client-go/kubernetes"
  kubeapiservertesting "k8s.io/kubernetes/cmd/kube-apiserver/app/testing"
  "k8s.io/kubernetes/staging/src/k8s.io/apiserver/pkg/authentication/serviceaccount"
  integrationFramework "k8s.io/kubernetes/test/integration/framework"
  e2eFramework "k8s.io/kubernetes/test/e2e/framework"

)

var _ = Describe("Init", func() {
  _kfctl := cmd.Execute
  server := kubeapiservertesting.StartTestServerOrDie(t, nil, nil, integrationFramework.SharedEtcd())

  f := e2eFramework.NewDefaultFramework("kfctl")

  var c clientset.Interface
  BeforeEach(func() {
    c = f.ClientSet

    // this test wants powerful permissions.  Since the namespace names are unique, we can leave this
    // lying around so we don't have to race any caches
    e2eFramework.BindClusterRoleInNamespace(c.RbacV1beta1(), "edit", f.Namespace.Name,
      rbacv1beta1.Subject{Kind: rbacv1beta1.ServiceAccountKind, Namespace: f.Namespace.Name, Name: "default"})

    err := e2eFramework.WaitForAuthorizationUpdate(c.AuthorizationV1beta1(),
      serviceaccount.MakeUsername(f.Namespace.Name, "default"),
      f.Namespace.Name, "create", schema.GroupResource{Resource: "pods"}, true)
    e2eFramework.ExpectNoError(err)
  })

  ginkgo.It("should create cache", func() {
    ginkgo.By("downloading .cache/{kubeflow, manifests}")
      _kfctl(cmd.VERSION)

  })
})
