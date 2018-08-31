set -e

baseVersion="cef_binary_3.2357.1291.g47e6d4b_windows"
function cleanCef() {
	arch=$1
	version="${baseVersion}${arch}"
	echo "================cleanCef ${arch}==================="
	rm -rf ${version}/include
	rm -rf ${version}/Resources
	rm -rf ${version}/Release/*
	rm -rf ${version}/Debug/*
}
function copyCef() {
	arch=$1
	version="${baseVersion}${arch}"
	echo "================copyCef ${arch}==================="
	cp -rf UE4.11/Source/${version}/Release/libcef.lib 			${version}/Release/
	cp -rf UE4.11/Source/${version}/Release/libcef.lib 			${version}/Debug/
	cp -rf UE4.11/Source/${version}/include 						${version}/
	cp -rf UE4.11/Binary/Win${arch}/Resources 					${version}/
	cp -rf UE4.11/Binary/Win${arch}/* 							${version}/Release/
	cp -rf UE4.11/Binary/Win${arch}/* 							${version}/Debug/
	rm -rf ${version}/Release/Resources
	rm -rf ${version}/Debug/Resources
	
}

function build() {
	arch=$1
	version="${baseVersion}${arch}"
	
	echo "================build ${arch}==================="
	
	cd ${version}
	sh -x build${arch}.sh
	cd ..
}



echo "================start 32==================="

cleanCef 	32
copyCef 	32 
build 		32


echo "================start 64==================="

cleanCef 	64
copyCef 	64 
build 		64



echo "build all succ"