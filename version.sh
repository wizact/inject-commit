export GIT_COMMIT=$(git rev-list -1 HEAD)
echo $GIT_COMMIT
go build
