
Pod::Spec.new do |s|
    s.name             = 'ZDBaseKit'
    s.version          = '0.2.3'
    s.summary          = 'ZDBaseKit'
    s.description      = <<-DESC
                       平常做项目的一些总结
                       DESC
    
    s.homepage         = 'https://github.com/zdq1179169386/ZDBaseKit'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zdq1179169386' => '2259434901@qq.com' }
    s.source           = { :git => 'https://github.com/zdq1179169386/ZDBaseKit.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    #  s.public_header_files = 'ZDBaseKit/Classes/ZDBaseKit.h'
    s.source_files = 'ZDBaseKit/Classes/**/*'
    # s.resource_bundles = {
    #   'ZDBaseKit' => ['ZDBaseKit/Assets/*.png']
    # }
    
    s.subspec 'ZDFoundation' do |ss|
        ss.source_files = 'ZDBaseKit/Classes/ZDFoundation/**/*'

    end
    
    s.subspec 'ZDUIKit' do |ss|
        ss.source_files = 'ZDBaseKit/Classes/ZDUIKit/**/*'
    end
    
end

