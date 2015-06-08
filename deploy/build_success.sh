echo "Accessing build_success.sh"
echo "Branch:"
echo $TRAVIS_BRANCH
echo "Fetching index1:"
git fetch origin index1
echo "Checking out index1:"
git checkout remotes/origin/index1
echo "Creating new branch index1:"
git checkout -b index1
echo "Displaying list of branches:"
git branch -a
echo "Displaying commit log:"
git log -5
echo "Merging from $TRAVIS_BRANCH:"
git merge $TRAVIS_BRANCH
echo "Pushing:"
git push origin index1