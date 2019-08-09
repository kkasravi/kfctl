package main_test

import (
  "github.com/kkasravi/application"
  "github.com/onsi/ginkgo"
  "github.com/onsi/gomega"
  "k8s.io/apimachinery/pkg/runtime"
  "k8s.io/client-go/kubernetes/scheme"
  "k8s.io/client-go/rest"
  "k8s.io/client-go/tools/clientcmd"
  "log"
  "os"
  "path"
  "sigs.k8s.io/controller-runtime/pkg/client"
  apiextcs "k8s.io/apiextensions-apiserver/pkg/client/clientset/clientset"
)

func getClientConfig() (*rest.Config, error) {
  return clientcmd.BuildConfigFromFlags("", path.Join(os.Getenv("HOME"), ".kube/config"))
}

func getKubeClientOrDie(config *rest.Config, s *runtime.Scheme) client.Client {
  c, err := client.New(config, client.Options{Scheme: s})
  if err != nil {
    panic(err)
  }
  return c
}

var _ = ginkgo.Describe("Application CRD should install correctly", func() {
  s := scheme.Scheme
  apis.AddToScheme(s)

  config, err := getClientConfig()
  if err != nil {
    log.Fatal("Unable to get client configuration", err)
  }

  extClient, err := apiextcs.NewForConfig(config)
  if err != nil {
    log.Fatal("Unable to construct extensions client", err)
  }

  It("should create CRD", func() {
    err = testutil.CreateCRD(extClient, "../config/crds/app_v1beta1_application.yaml")
    gomega.Expect(err).NotTo(HaveOccurred())
  })

  It("should register an application", func() {
    client := getKubeClientOrDie(config, s) //Make sure to create the client after CRD has been created.
    err = testutil.CreateApplication(client, "default", "../config/samples/app_v1beta1_application.yaml")
    gomega.Expect(err).NotTo(HaveOccurred())
  })

  It("should delete application", func() {
    client := getKubeClientOrDie(config, s)
    err = testutil.DeleteApplication(client, "default", "../config/samples/app_v1beta1_application.yaml")
    gomega.Expect(err).NotTo(HaveOccurred())
  })

  It("should delete application CRD", func() {
    err = testutil.DeleteCRD(extClient, "../config/crds/app_v1beta1_application.yaml")
    gomega.Expect(err).NotTo(HaveOccurred())
  })
})

/*
var _ = ginkgo.Describe("Init", func() {
  _kfctl := cmd.Execute

  f := e2eFramework.NewDefaultFramework("kfctl")

  var c clientset.Interface
  ginkgo.BeforeEach(func() {
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
 */
