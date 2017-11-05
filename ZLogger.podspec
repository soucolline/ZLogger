Pod::Spec.new do |s|
  s.name             = 'ZLogger'
  s.version          = '1.0.0'
  s.summary          = 'Light, magical, easy to use Logger for your swift apps.'

  s.description      = <<-DESC
Zlogger is a simple Logger to use for your swift App. You can print debugs messages
with different levels of criticity and filter those messages to only show what's relevant to you
                       DESC

  s.homepage         = 'https://github.com/soucolline/ZLogger'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'soucolline' => 'guilleminot.thomas@gmail.com' }
  s.source           = { :git => 'https://github.com/soucolline/ZLogger.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mrsoucolline'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ZLogger/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZLogger' => ['ZLogger/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
