# coding: utf-8

Pod::Spec.new do |spec|
  spec.name = 'yoga'
  spec.version = "0.54.2.React"
  spec.license =  { :type => 'MIT' }
  spec.homepage = 'https://facebook.github.io/yoga/'
  spec.documentation_url = 'https://yogalayout.com/docs'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.authors = 'Facebook'
  spec.source = { :git => 'https://github.com/facebook/react-native.git',
                  :tag => "v0.54.2" }

  spec.module_name = 'yoga'
  spec.requires_arc = false
  spec.compiler_flags = [
      '-fno-omit-frame-pointer',
      '-fexceptions',
      '-Wall',
      '-Werror',
      '-std=c++1y',
      '-fPIC'
  ]

  # Pinning to the same version as React.podspec.
  spec.platforms = { :ios => "8.0", :tvos => "9.2" }

  spec.source_files = 'yoga/**/*.{cpp,h}'
  spec.source_files = "ReactCommon/yoga/yoga/**/*.{cpp,h}"
  spec.public_header_files = "ReactCommon/yoga/yoga/{Yoga,YGEnums,YGMacros}.h"

end
