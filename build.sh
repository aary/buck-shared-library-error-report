curl -OL https://www.threadingbuildingblocks.org/sites/default/files/software_releases/source/tbb2017_20170118oss_src.tgz
tar -xzvf tbb2017_20170118oss_src.tgz
mv tbb2017_20170118oss tbb
rm tbb2017_20170118oss_src.tgz
cd tbb
make
mv build/*_release build/tbb_release
