#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint tdlib.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'tdlib'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.vendored_libraries = 'lib/**/*'
  # s.static_framework = true
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    # TODO: .a files for `iphoneos*`?
    # refs:
    # https://github.com/CocoaPods/CocoaPods/issues/5071#issuecomment-218517921
    # https://stackoverflow.com/questions/46435278/how-to-use-static-library-and-module-map-file-with-swift
    'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/../.symlinks/plugins/tdlib/ios/include',
    # 'LIBRARY_SEARCH_PATHS[sdk=iphonesimulator*]' => '$(inherited) "${PODS_ROOT}/../.symlinks/plugins/tdlib/ios/lib"',
  }
  # s.user_target_xcconfig = {
  #   'LIBRARY_SEARCH_PATHS[sdk=iphonesimulator*]' => '$(inherited) "${PODS_ROOT}/../.symlinks/plugins/tdlib/ios/lib"',
  #   'OTHER_LDFLAGS' => '$(inherited) -l"tdjson"'
  # }
  s.swift_version = '5.0'
end
