Pod::Spec.new do |spec|
  spec.name                = 'Antourage'
  spec.version             = '4.0.0'
  spec.license             = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage            = 'https://antourage.com'
  spec.summary             = 'Antourage provides to users possibility to watch streams and use chat and polls'
  spec.author              = { 'Antourage AB' => 'info@antourage.com' }
  spec.documentation_url   = 'https://antourage.github.io'
  
  spec.cocoapods_version   = '>= 1.10.0'
  spec.swift_version       = '5.0'
  spec.platform            = :ios, '13.0'
  spec.source              = { :git => 'https://github.com/antourage/viewer-sdk-ios.git', :tag => spec.version.to_s }
  spec.vendored_frameworks = 'AntourageViewer.xcframework'
end
