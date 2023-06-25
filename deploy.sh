git push origin main
git checkout source
git merge main
docker exec homemarccodedibuixos ruby index.rb > index.html
git add index.html
git commit -m "$(date +%s)"
git push --set-upstream origin source
git checkout main
