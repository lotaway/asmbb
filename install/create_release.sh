#!/bin/bash

#First compile the binary files

mkdir asmbb

# complile less files

pushd .

echo "Compile MoLight theme styles..."
cd ../MoLight/
./compile_styles.sh

popd

pushd .

cd ../musl_sqlite/
./build sqlitemc

popd

# copy engine files
cp ../www/engine asmbb/
cp ../musl_sqlite/*.so asmbb/

# copy images
rsync -ar ../www/images/* asmbb/images/ --exclude-from=exclude.txt

# templates and styles
rsync -ar ../www/templates/* asmbb/templates/ --exclude-from=exclude.txt

# example config files for apache and lighttpd
cp .htaccess asmbb/
cp lighttpd.conf asmbb/

cp ../License.txt asmbb/
cp ../manifest.uuid asmbb/
cp install.txt asmbb/

# now pack it
tar -czf asmbb.tar.gz asmbb/

if [ ! -f ./unpack.tar.gz ]; then
  tar -czf unpack.tar.gz unpack/
fi

rm -rf asmbb/
