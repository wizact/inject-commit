export GIT_COMMIT=$(git rev-list -1 HEAD)
IS_DIRTY=$(git status --porcelain=v1 2>/dev/null | wc -l)

if [ $IS_DIRTY -ne 0 ]; then
    export GIT_COMMIT="$GIT_COMMIT-dirty"
fi

echo "Version: $GIT_COMMIT"
go build -ldflags "-X main.GitCommit=$GIT_COMMIT"
