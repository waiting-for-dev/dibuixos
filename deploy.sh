git push origin main
git checkout source
git reset --hard main
docker exec homemarccodedibuixos ruby index.rb > index.html
git add index.html
git commit -m "$(date +%s)"
git push --set-upstream --force origin source
git checkout main
rm -f index.html
