#
# Be sure to run `pod lib lint C2CFloatingCustomLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'C2CFloatingCustomLibrary'
  s.version          = '1.0'
  s.summary          = 'C2CFloatingCustomLibrary implements the "Float Label Pattern," keeping labels visible while typing. It enhances clarity, saves space, and offers flexibility for customization'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
   C2CFloatingCustomLibrary is a sleek, flexible, and customizable implementation of the space-saving "Float Label Pattern." This design provides contextual input field labels that remain visible while typing, minimizing extra space usage.
                       DESC

  s.homepage         = 'https://github.com/TroyVGroup/CustomFloatingLabelLib-XCF-Framewrrk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Satyam Kumar' => 'satyam.kumar@vgroup.net' }
  s.source           = { :git => 'https://github.com/TroyVGroup/CustomFloatingLabelLib-XCF-Framewrrk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.vendored_frameworks = 'C2CFloatingLabelLibrary.xcframework'
  
  #s.source_files = 'C2CFloatingCustomLibrary/Classes/**/*'
  s.frameworks = 'UIKit';
  # s.resource_bundles = {
  #   'C2CFloatingCustomLibrary' => ['C2CFloatingCustomLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
