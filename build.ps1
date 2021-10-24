pushd 

# clean destination keeping CNAME and .git file
Get-ChildItem -Path  './public/' -Recurse -exclude CNAME, .git  |
Select -ExpandProperty FullName |
Remove-Item -force 

# generate new page
../Tools/Hugo/hugo 

# push to git
cd public
git add .
git commit -m "New Iteration"
git push

popd