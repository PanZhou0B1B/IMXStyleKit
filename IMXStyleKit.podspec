Pod::Spec.new do |s|
  s.name         = "IMXStyleKit"
  s.version      = "1.0.0"
  s.summary      = "Style settings:UIColor,iconfont,UIFont"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "https://github.com/PanZhow/IMXStyleKit.git"
  s.author             = { "zhoupanpan" => "2331838272@qq.com" }
  s.source       = { :git => "https://github.com/PanZhow/IMXStyleKit.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.platform     = :ios, '8.0'

  s.source_files  = 'IMXStyleKit/IMXStyleKit.h'
  s.public_header_files = [
    'IMXStyleKit/IMXStyleKit.h'
  ]

  s.subspec 'IMXColor' do |color|
    color.source_files  = 'IMXStyleKit/IMXColor/*.{h,m}'
    color.public_header_files = [
      'IMXStyleKit/IMXColor/*.{h}'
    ]
  end

  s.subspec 'IMXFont' do |font|
    font.source_files  = 'IMXStyleKit/IMXFont/*.{h,m}'
    font.public_header_files = [
      'IMXStyleKit/IMXFont/*.{h}'
    ]
    font.compiler_flags = '-Wunguarded-availability'
  end

  s.subspec 'IMXIconfont' do |icon|
    icon.source_files  = 'IMXStyleKit/IMXIconfont/*.{h,m}'
    icon.public_header_files = [
      'IMXStyleKit/IMXIconfont/*.{h}'
    ]
    icon.frameworks = 'CoreText'
  end

end
