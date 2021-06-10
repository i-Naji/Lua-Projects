#!/bin/bash -e

__DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $__DIR__

cleanup() {
	rm -fr $__DIR__/include/td
	rm -fr $__DIR__/lib
}

copy_from_repo_TDJSON() {
	local dir=TDJSON
	if [ ! -d "$__DIR__/$dir" ]; then
		git clone git@github.com:leoMehlig/TDJSON.git
	fi
	mkdir -p $__DIR__/include/td
	cp $__DIR__/$dir/example/ios/tdjson/iOS/include/td/telegram/td_json_client.h ./include/td/
	cp $__DIR__/$dir/example/ios/tdjson/iOS/include/td/telegram/json_export.h ./include/td/
	find $__DIR__/include/td -type f -exec sed -i '' "s/\#include\ \"td\\/telegram\\//\#include\ \"/g" {} \;
	find $__DIR__/include/td -type f -exec sed -i '' "s/\#include\ \"td\\/tl\\//\#include\ \"/g" {} \;
	# .a files
	cp -r $__DIR__/$dir/lib .
	# .dylib in release, see https://github.com/leoMehlig/TDJSON/releases
}

download_and_copy_prebuilt_from_Python_Apple_support() {
	local platform=$1
	local platform_dir=$platform-lib
	curl -SL https://github.com/beeware/Python-Apple-support/releases/download/3.9-b3/Python-3.9-$platform-support.b3.tar.gz -o $platform_dir.tar.gz
	mkdir -p $platform_dir
	tar -xzf $platform_dir.tar.gz -C $platform_dir
	mkdir -p third_party/openssl/$platform/include
	cp -r $platform_dir/OpenSSL/Headers/* third_party/openssl/$platform/include/
	mkdir -p third_party/openssl/$platform/lib
	cp $platform_dir/OpenSSL/*.a third_party/openssl/$platform/lib/
}

# https://github.com/tdlib/td/tree/master/example/ios
build_from_repo_td() {
	local dir=td
	if [ ! -d "$__DIR__/$dir" ]; then
		git clone git@github.com:tdlib/td.git
	fi
	brew install gperf cmake coreutils

	cd $__DIR__/$dir/example/ios
	# sed -i '' "s/^platforms=/platforms=\"iOS\" #/g" ./build-openssl.sh
	# ./build-openssl.sh
	# Using prebuilt version, see https://github.com/beeware/Python-Apple-support
	download_and_copy_prebuilt_from_Python_Apple_support iOS

	cd $__DIR__/$dir/example/ios
	sed -i '' "s/^platforms=/platforms=\"iOS\" #/g" ./build.sh
	sed -i '' "s/openssl_crypto_library=/openssl_crypto_library=\"\${openssl_path}\/lib\/libOpenSSL.a\" #/" ./build.sh
	sed -i '' "s/openssl_ssl_library=/openssl_ssl_library=\"\${openssl_path}\/lib\/libOpenSSL.a\" #/" ./build.sh
	sed -i '' "s/-DIOS_PLATFORM=\${ios_platform}/-DIOS_PLATFORM=\${ios_platform} -DIOS_DEPLOYMENT_TARGET=10.0/" ./build.sh
	# 64 bit only?
	sed -i '' "s/armv7;armv7s;arm64/arm64/" ../../CMake/iOS.cmake
	sed -i '' "s/i386;x86_64/x86_64/" ../../CMake/iOS.cmake
	./build.sh

	cd $__DIR__
	mkdir -p include/td
	cp $dir/example/ios/tdjson/iOS/include/td/telegram/td_json_client.h ./include/td/
	cp $dir/example/ios/tdjson/iOS/include/td/telegram/json_export.h ./include/td/
	find ./include/td -type f -exec sed -i '' "s/\#include\ \"td\\/telegram\\//\#include\ \"/g" {} \;

	# mkdir -p lib
	# TODO: .a static files for release version?, see https://crafttang.com/2017/10/18/how-to-upload-an-app-with-universal-framework/
	# result_dir=$dir/example/ios/build/install-iOS
	# find $result_dir -type f -name '*.a' -exec cp "{}" ./lib/ \;
	# cp $dir/example/ios/third_party/openssl/iOS/lib/* ./lib/

	mkdir -p lib
	# fat (arm64;x86_64), > 100M
	cp $dir/example/ios/tdjson/iOS/lib/libtdjson.dylib ./lib/
	# thin (x86_64), ~17M, this will cause error "Underlying error (domain=FBProcessExit, code=128)"
	# result_dir=$dir/example/ios/build/install-iOS-simulator
	# cp $result_dir/lib/libtdjson.dylib ./lib/
}

cleanup

# rm -fr $__DIR__/TDJSON
# copy_from_repo_TDJSON

# rm -fr $__DIR__/td
build_from_repo_td
