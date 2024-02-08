echo "CD into githubactions"
cd githubactions
echo Installing dependencies
npm install
echo building production grade react app
npm run build
echo Content of build folder
ls build
