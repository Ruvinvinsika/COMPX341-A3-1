# ruvin Kokuhennadige
#1541447

echo "(0) npm installing"
if npm install; then
    echo"npm successfully installed"
else
    echo "install failed"
    exit
fi

echo "(1) building"
if npm run build; then
    echo"build successfull "
else
    echo "build failed"
    exit
fi

echo "(2) commit and pushing to repo"
message="$1"
if [[ -z "${message// }" ]]
    then
        message=$"COMPX341-22A-A3 Commiting from CI/CD Pipeline"
    

fi

cd ..
git add .
git commit -m "$message"
git push

echo "(3) application start "
cd assets
npm run start