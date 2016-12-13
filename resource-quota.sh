for each in $(kubectl get ns -o jsonpath=""{.items[*].metadata.name})
do
 kubectl describe quota --namespace=$each
done
