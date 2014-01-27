cd ..
export commit_org=`cat ./commit_org`
export commit_new=`cat ./commit_new`
echo "--------------------------------------"
echo "About to update from..."
echo $commit_org
echo "...to..."
echo $commit_new
echo ""
echo "[Press any key to begin]"
read -n 1 -s
echo ""
echo "[Generating patch...]"
cd android
../tools/git.patch $commit_org..$commit_new > ./patch.file
cd ..
cd q
echo "[Applying patch...]"
../tools/git.apply ../android/patch.file
rm ../android/patch.file
echo "[All done!]"
