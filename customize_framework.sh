current=`echo $2 | sed -e "s/out\///"`
if [ -d "./inject_framework/${current}" ]; then
    echo "cp -rf ./inject_framework/${current} ./out"
    cp -rf ./inject_framework/${current} ./out
fi
