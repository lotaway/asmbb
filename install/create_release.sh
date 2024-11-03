#!/bin/bash

#First compile the binary files

mkdir asmbb

echo "complile less files"

pushd .

echo "Compile Light theme styles..."
cd ../www/templates/Light/
./compile_styles.sh

popd

pushd .

cd ../musl_sqlite/
bash ./build sqlitemc

popd

echo "copy engine files"
cp ../www/engine asmbb/
cp ../musl_sqlite/*.so asmbb/

echo "copy images"
rsync -ar ../www/images/* asmbb/images/ --exclude-from=exclude.txt

echo "emplates and styles"
rsync -ar ../www/templates/* asmbb/templates/ --exclude-from=exclude.txt

echo "example config files for apache and lighttpd"
cp .htaccess asmbb/
cp lighttpd.conf asmbb/

cp ../License.txt asmbb/
cp ../manifest.uuid asmbb/
cp install.txt asmbb/

echo "pack it now"
tar -czf asmbb.tar.gz asmbb/

if [ ! -f ./unpack.tar.gz ]; then
  tar -czf unpack.tar.gz unpack/
fi

rm -rf asmbb/
echo "Done create release"