gzip friendlywrt-*/out/*.img
rm -rf ./artifact/ && mkdir -p ./artifact/
mv friendlywrt-*/out/*img* ./artifact/
cp friendlywrt-*/friendlywrt/.config ./artifact/
cp -r friendlywrt-*/friendlywrt/bin/  ./artifact/
cd ./artifact/
md5sum *img* > md5sum.txt
cd ..
zip -r artifact.zip ./artifact/
