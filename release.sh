BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" != "master" ]]; then
  echo 'You must be on the master branch to release!';
  exit 1;
fi

if [[ -z $(git status -s) ]]
then
  git checkout -b release
  git merge master

  npm run build
  git add ./docs/*
  git commit ./docs/* -m "Updating docs"

  git push origin release
  git checkout master
else
  echo "Please commit any changes before merging to release"
  exit 1
fi
