#
# Be sure to run `pod lib lint PAArchive.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PAArchive'
  s.version          = '0.1.0'
  s.summary          = 'An archiving API in use at Picsart, using libarchive behind the scenes.'

  s.description      = <<-DESC
This is a pod developed to use libarchive and expose the API in a more mobile-friendly way.
                       DESC

  s.homepage         = 'https://github.com/cristipics/PAArchive'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cristipics' => 'cristi.habliuc@picsart.com' }
  s.source           = { :git => 'https://github.com/cristipics/PAArchive.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files = [
    'Sources/*',
    'libarchive/libarchive/*.(h,c)'
  ]
  
  s.public_header_files = 'Sources/PAArchive.h'
  s.frameworks = 'Foundation'

  s.pod_target_xcconfig = { 
    'CLANG_ENABLE_MODULES' => 'YES',
    'GCC_NO_COMMON_BLOCKS' => 'YES',
    'GCC_C_LANGUAGE_STANDARD' => 'gnu11',
    # 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17',
    'CLANG_ENABLE_MODULES' => 'YES',
    # 'CLANG_ENABLE_OBJC_ARC' => 'YES',
    # 'CLANG_ENABLE_OBJC_WEAK' => 'YES',
    'ENABLE_STRICT_OBJC_MSGSEND' => 'YES'
    'OTHER_LDFLAGS' => '-lObjC' 
  }
  
end
