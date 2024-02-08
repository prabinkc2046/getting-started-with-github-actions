echo "CD into githubactions"
cd githubactions
echo Installing dependencies
npm install
echo building production grade react app
npm run build
echo Content of build folder
ls build
echo
echo "check if sshpass is present"
if command -v sshpass; then
  sshpass -p prabin scp -r build/* prabin@172.105.178.89:/var/www/html/test
  echo "build is transferred to production server"
else
  echo "sshpass is not found, installing"
  apt update -y && apt install sshpass -y
  sshpass -p prabin scp -r build/* prabin@172.105.178.89:/var/www/html/test
  echo "build is transferred to production server"  
fi

