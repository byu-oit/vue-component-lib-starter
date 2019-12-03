BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" != "master" ]]; then
  echo 'You must be on the master branch to release!';
  exit 1;
fi

if [[ -z $(git status -s) ]]
then
  git checkout master
  git merge dev

  npm run build
  git add ./docs/*
  git commit ./docs/* -m "Updating docs"

  git push origin master
  git checkout dev
else
  echo "Please commit any changes before merging to release"
  exit 1
fi
