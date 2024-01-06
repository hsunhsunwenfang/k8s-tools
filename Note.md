
# Start ghcr

## Link

https://earthly.dev/blog/streamline-container-ghcr/

## create a github personal access token

- permissions : write:packages, delete:packages
- scope : workflow

## docker login

- username : github account name
- password : personal access token

## docker build

docker build -t ghcr.io/GITHUB_USERNAME/IMAGE_NAME:TAG .

## docker push

docker push ghcr.io/USERNAME/REPOSITORY/IMAGE_NAME:TAG


# Use ghcr image in k8s

kubectl create secret docker-registry <secret_name> --docker-server=ghcr.io --docker-username=<USERNAME> --docker-password=TOKEN

# Use image pull secret in pod
