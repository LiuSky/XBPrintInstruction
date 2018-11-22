#
# Be sure to run `pod lib lint XBPrintInstruction.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XBPrintInstruction'
  s.version          = '0.1.0'
  s.summary          = '蓝牙打印机指令esc-pos'
  s.homepage         = 'https://github.com/LiuSky/XBPrintInstruction'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sky' => '327847390@qq.com' }
  s.source           = { :git => 'https://github.com/LiuSky/XBPrintInstruction.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version         = '4.2'
  s.source_files = 'XBPrintInstruction/Classes/**/*'
end
