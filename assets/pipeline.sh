# ruvin Kokuhennadige
#1541447

echo"(0) npm installing"
if npm install; then
    echo"npm successfully installed"
else
    echo "install failed"
    exit
fi

echo"(1) building"
if npm run build; then
    echo"build successfull "
else
    echo "build failed"
    exit
fi

echo "(2) application start "
npm run start