Pod::Spec.new do |s|
  s.name             = 'PAArchive'
  s.version          = '0.1.3'
  s.summary          = 'An archiving API in use at Picsart, using libarchive behind the scenes.'

  s.description      = <<-DESC
This is a pod developed to use libarchive and expose the API in a more mobile-friendly way.
                       DESC

  s.homepage         = 'https://github.com/cristipics/PAArchive'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cristipics' => 'cristi.habliuc@picsart.com' }
  s.source           = { :git => 'https://github.com/cristipics/PAArchive.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '12.0'

  s.source_files = [
    'Sources/*',
    'libarchive/libarchive/*.{h,c}'
  ]
  
  s.public_header_files = 'Sources/PAArchive.h'
  s.frameworks = 'Foundation'

  s.pod_target_xcconfig = { 
    'CLANG_ENABLE_MODULES' => 'YES',
    'GCC_NO_COMMON_BLOCKS' => 'YES',
    'GCC_C_LANGUAGE_STANDARD' => 'gnu11',
    'ENABLE_STRICT_OBJC_MSGSEND' => 'YES',
    'OTHER_LDFLAGS' => '-lObjC' 
  }
  
end
