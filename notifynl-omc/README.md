# foo

This chart installs [foo](http://foo.io), the app with the most bar. This is just a standard foo setup.

## Configuration

<!-- this section is optional if there is nothing special about your config -->

### Secrets

The following secrets are configurable:

- username
- password

### Labels

You can use the following labels for maximum fun.

- lol=cat

### Environment Variables

The foo pods also have the following environment variables:

- getfired
- false: does something totally reasonable.
- true: close your laptop and walk out.

## Usage

Once installed, you can access the application by (hitting a url | executing a command) as follows:

```console
export NODEPORT=`kubectl get svc --selector='app=foo,heritage=helm' --output=template --template="{{ with index .items 0}}{{with index .spec.ports 0 }}{{.nodePort}}{{end}}{{end}}"`
export NODE=`kubectl get nodes --output=template --template="{{with index .items 0 }}{{.metadata.name}}{{end}}"`

curl http://$NODE:$NODEPORT
```

--or--

```console
export PODNAME=`kubectl get pod --selector='app=foo,heritage=helm' --output=template --template="{{with index .items 0}}{{.metadata.name}}{{end}}"

kubectl exec $PODNAME command
```

The foo pods can also be scaled:

```console
kubectl scale rc foo --replicas=10
```

## More Info

The Baz Foundation is the best resource for all things Foo:

http://baz.org
