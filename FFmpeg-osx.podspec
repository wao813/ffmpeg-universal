Pod::Spec.new do |s|
  s.name         = "FFmpeg-OSX"
  s.version      = "2.5.2"
  s.summary      = "FFmpeg static libraries compiled for OSX"
  s.homepage     = "https://github.com/wao813/ffmpeg-universal"
  
  s.license      = { :type => 'LGPLv2.1+', :file => 'COPYING.LGPLv2.1' }
  s.author       = { "James Wen" => "wao813@gmail.com" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :osx

  s.source       = { :git => "https://github.com/wao813/ffmpeg-universal.git" }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'include/**/*.h'
    ss.public_header_files = 'include/**/*.h'
    ss.header_mappings_dir = 'include'
    ss.vendored_libraries  = 'lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
  end

end
