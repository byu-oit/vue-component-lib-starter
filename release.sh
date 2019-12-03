BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" == "master" ]]; then
  echo 'You cannot be on the master branch to release!';
  exit 1;
fi

if [[ -z $(git status -s) ]]
then
  git checkout master
  git merge ${BRANCH}

  npm run build
  git add ./docs/*
  git commit ./docs/* -m "Updating docs"

  git push origin master
  git checkout ${BRANCH}
else
  echo "Please commit any changes before merging to master"
  exit 1
fi
