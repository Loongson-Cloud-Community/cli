export CGO_ENABLED="1"
export GOPATH=~/go
mkdir -p ~/go/src/github.com/docker
rm -rf ~/go/src/github.com/docker/cli
#store cli code in home path
ln -s /home/cli ~/go/src/github.com/docker/cli
pushd ~/go/src/github.com/docker/cli
DISABLE_WARN_OUTSIDE_CONTAINER=1 make VERSION=23.0.4  binary manpages  #static
#DISABLE_WARN_OUTSIDE_CONTAINER=1 make VERSION=23.0.4  dynbinary manpages  #dynamic
popd
