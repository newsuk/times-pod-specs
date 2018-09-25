# coding: utf-8
require 'json'

podspec_version = "0.4.4"
react_native_version = "0.55.4"

print "times-pod-specs podspec_version #{podspec_version}...\n"
print "times-pod-specs react_native_version #{react_native_version}...\n"


Pod::Spec.new do |s|
  s.name         = "TimesReactIOS"
  s.version      = podspec_version
  s.summary      = "Times iOS React components"
  s.description  = "All the things for Times iOS React components including dependancies"
  s.homepage     = "https://www.news.co.uk"
  s.license      = { type: 'MIT', file: 'LICENSE' }
  s.author       = "News UK"
  s.platform     = :ios
  s.source       = { :git => 'https://github.com/newsuk/times-pod-specs.git', :tag => '@thetimes/ios-app@0.0.1'}
  #s.source       = { :git => 'https://github.com/facebook/react-native.git', :tag => "v0.55.4" }
  

  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.swift_version = '3.0'
  #s.resources   = "./ios-app/assets/js/index.ios.bundle"
  #s.resource_bundles = {'TimesReactIOSBundle' => './ios-app/assets/js/index.ios.bundle'}
  
  # React is split into a set of subspecs, these are the essentials
  
  s.dependency 'React/Core'
  s.dependency 'React/CxxBridge'
  s.dependency 'React/RCTAnimation'
  s.dependency 'React/RCTImage'
  s.dependency 'React/RCTLinkingIOS'
  s.dependency 'React/RCTNetwork'
  s.dependency 'React/RCTText'
  s.dependency 'React/RCTWebSocket'
  s.dependency 'React/DevSupport'
  s.dependency 'React/ART'

  # React's dependencies

  s.dependency 'RNDeviceInfo'
  s.dependency 'yoga', "#{react_native_version}.React"
  s.dependency 'DoubleConversion'
  s.dependency 'Folly'
  s.dependency 'glog'

end
