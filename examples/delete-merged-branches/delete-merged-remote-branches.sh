#!/binsh

# From Scott Chacon: https://gist.github.com/942899

git branch -r --merged | \
  grep origin | \
  grep -v '>' | \
  grep -v master | \ 
  xargs -L1 | \
  awk '{split($0,a,"/"); print a[2]}' | \
  xargs git push origin --delete
