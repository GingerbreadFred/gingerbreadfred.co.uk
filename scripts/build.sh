find ./public -mindepth 1  ! -name "CNAME" ! -name ".git" | xargs rm -rf

hugo

pushd public 


git add -A
git commit -m "New Site"
git push

popd
