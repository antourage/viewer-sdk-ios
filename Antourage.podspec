Pod::Spec.new do |spec|
  spec.name                = 'Antourage'
  spec.version             = '3.0.3'
  spec.license             = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage            = 'https://antourage.com'
  spec.summary             = 'Antourage provides to users possibility to watch streams and use chat and polls'
  spec.author              = { 'Antourage AB' => 'info@antourage.com' }
  spec.documentation_url   = 'https://antourage.github.io'
  
  spec.cocoapods_version   = '>= 1.10.0'
  spec.swift_version       = '5.0'
  spec.platform            = :ios, '11.3'
  spec.source              = { :git => 'https://github.com/antourage/viewer-sdk-ios.git', :tag => spec.version.to_s }
  spec.source_files        = 'Sources/Antourage/**/*.{swift}'
  spec.vendored_frameworks = 'AntourageViewer.xcframework'

  spec.frameworks = 'Foundation', 'UIKit', 'CoreData', 'AVKit', 'MediaPlayer'
  spec.dependency 'Firebase/Auth'
  spec.dependency 'Firebase/Firestore'

  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  spec.static_framework = true

  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '\'$(PODS_ROOT)/Antourage/**\'',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/Firebase/CoreOnly/Sources',
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/Firebase/CoreOnly/Sources'
  }

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
