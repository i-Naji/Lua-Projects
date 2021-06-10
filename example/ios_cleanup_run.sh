#!/bin/bash -e

__DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $__DIR__

# https://github.com/flutter/flutter/issues/41900#issuecomment-601599410
flutter clean
rm -f ios/Podfile ios/Podfile.lock pubspec.lock
rm -rf ios/Pods ios/Runner.xcworkspace
flutter run --debug
