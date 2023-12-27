#
# Be sure to run `pod lib lint secp256k1_ext.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'secp256k1_ext.swift'
  s.version          = '0.1.4'
  s.summary          = 'secp256k1_ext bindings for swift. Cocoapods, Carthage and SPM support. Linux support.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod binds the bitcoin-core library, the ECDSA curve, secp256k1_ext into Swift. This curve is used for
Bitcoin, Ethereum and many other Cryptocurrency Signature generation and verification.
                       DESC

  s.homepage         = 'https://github.com/kk-vv/secp256k1_ext.swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Koray Koska' => 'koray@koska.at' }
  s.source           = { :git => 'https://github.com/kk-vv/secp256k1_ext.swift', :tag => s.version.to_s, :submodules => true }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.module_name = 'secp256k1_ext'

  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}',
    'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1 -pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1_ext/Classes"'
  }

  s.source_files = 'secp256k1_ext/Classes/secp256k1_ext/{src,include,contrib}/*.{h,c}', 'secp256k1_ext/Classes/secp256k1_ext/src/modules/{recovery,ecdh}/*.{h,c}', 'secp256k1_ext/Classes/secp256k1_ext-config.h', 'secp256k1_ext/Classes/secp256k1_ext_main.h', 'secp256k1_ext/Classes/secp256k1_ext_ec_mult_static_context.h'
  s.public_header_files = 'secp256k1_ext/Classes/secp256k1_ext/include/*.h'
  s.private_header_files = 'secp256k1_ext/Classes/secp256k1_ext_ec_mult_static_context.h', 'secp256k1_ext/Classes/secp256k1_ext/*.h', 'secp256k1_ext/Classes/secp256k1_ext/{contrib,src}/*.h', 'secp256k1_ext/Classes/secp256k1_ext/src/modules/{recovery, ecdh}/*.h'
  s.exclude_files = 'secp256k1_ext/Classes/secp256k1_ext/src/test*.{c,h}', 'secp256k1_ext/Classes/secp256k1_ext/src/gen_context.c', 'secp256k1_ext/Classes/secp256k1_ext/src/*bench*.{c,h}', 'secp256k1_ext/Classes/secp256k1_ext/src/modules/{recovery,ecdh}/*test*.{c,h}'

  # s.resource_bundles = {
  #   'secp256k1_ext' => ['secp256k1_ext/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
