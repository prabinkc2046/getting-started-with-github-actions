echo "CD into githubactions"
echo
echo "Installing dependencies"
npm install
echo "Building ..."
npm run build
echo
echo "Content of the build file"
ls build
