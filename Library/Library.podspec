


Pod::Spec.new do |s|
  s.name             = "ZDBaseKit"
  s.version          = "1.0.0"
  s.summary          = "基础扩展"
  s.description      = <<-DESC.gsub(/^\s*\|?/,'')
                       An optional longer description of DiDiMap

                       | * Markdown format.
                       | * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/zdq1179169386/ZDBaseKit.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'BSD'
  s.author           = { "yeqingnaruto" => "yeqingnaruto@didichuxing.com" }
  s.source           = { :git => "git@github.com:zdq1179169386/ZDBaseKit.git", :branch => "master" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.vendored_frameworks = [
        'Library/*.framework'
    ]

end
