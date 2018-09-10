
Pod::Spec.new do |s|
    s.name             = 'ZDBaseKit'
    s.version          = '0.1.0'
    s.summary          = 'ZDBaseKit'
    s.description      = <<-DESC
    '平常做项目的一些总结'
    DESC
    
    s.homepage         = 'https://github.com/zdq1179169386/ZDBaseKit'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zdq1179169386' => '2259434901@qq.com' }
    s.source           = { :git => 'https://github.com/zdq1179169386/ZDBaseKit.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    s.public_header_files = 'ZDBaseKit/ZDBaseKit.h'
    s.source_files = 'ZDBaseKit/ZDBaseKit.h'
    # s.resource_bundles = {
    #   'ZDBaseKit' => ['ZDBaseKit/Assets/*.png']
    # }
    
    s.subspec 'ZDFoundation' do |ss|
        ss.ios.deployment_target = '8.0'
        ss.public_header_files = 'ZDBaseKit/ZDUIKit/ZDUIKit.h'
        ss.source_files = 'ZDBaseKit/ZDUIKit.{h,m}'
    end
    
    
    s.subspec 'ZDUIKit' do |ss|
        ss.ios.deployment_target = '8.0'
        ss.public_header_files = 'ZDBaseKit/ZDUIKit/ZDUIKit.h'
        ss.source_files = 'ZDBaseKit/ZDUIKit.{h,m}'
    end
    
end

