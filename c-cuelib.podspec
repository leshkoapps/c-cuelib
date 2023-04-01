Pod::Spec.new do |s|
  s.name          = 'c-cuelib'
  s.version       = '1.0.0'
  s.license       = { :type => 'LGPLv3', :file => 'LICENSE' }
  s.summary       =  'A C library for parsing cue sheet.'
  s.description   =  'A simple cue parser C library for parsing cue sheet.'
  s.homepage      = 'https://github.com/coolerfall/c-cuelib'
  s.author        = { 'Vincent Cheung' => 'coolingfall@gmail.com' }
  s.source        = { :git => 'https://github.com/leshkoapps/c-cuelib', 
    :tag => s.version.to_s }

  s.source_files        = 'cue_common.h', 'cue_parser.h', 'cue_parser.c', 'cue_serializer.h', 'cue_serializer.c', 'cue_utils.h', 'cue_utils.c'
  s.public_header_files = '*.h'
 
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.xcconfig = {
       'WARNING_CFLAGS' => '-Wno-shorten-64-to-32 -Wno-logical-op-parentheses'
  }

  s.library             = 'stdc++'
  s.requires_arc = true
end
