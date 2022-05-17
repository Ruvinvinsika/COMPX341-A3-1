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


message="$1"
if [[ -z "${message// }" ]]
    then
        echo "commit message not provieded"
        echo "usage: sh pipline.sh <commit message>"
        echo exit 


fi
echo "(2) commit and pushing to repo"
cd ..
git add .
git commit -m "$message"
git push

echo "(3) application start "
cd assets
npm run start