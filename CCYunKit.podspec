#
# Be sure to run `pod lib lint CCYunKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CCYunKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CCYunKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "CCYunKit"

  s.homepage         = 'https://github.com/Gityuns/CCYunKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gityuns' => '2434783536@qq.com' }
  s.source           = { :git => 'https://github.com/Gityuns/CCYunKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'CCYunKit/Classes/**/*'
  
  s.source_files = 'CCYunKit/Classes/**/*'
  
  s.resources = ['CCYunKit/CCYunKit.bundle']

  s.public_header_files = 'Pod/Classes/**/*.h'

  s.dependency 'Masonry'
  s.dependency 'MJRefresh'
end
