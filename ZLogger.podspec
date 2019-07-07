Pod::Spec.new do |s|
  s.name                      = "ZLogger"
  s.version                   = "1.0.2"
  s.summary                   = "Light, magical, easy to use Logger for your swift apps."
  s.description      = <<-DESC
Zlogger is a simple Logger to use for your swift App. You can print debugs messages
with different levels of criticity and filter those messages to only show what's relevant to you
DESC

  s.homepage                  = "git@github.com:soucolline/ZLogger"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Thomas Guilleminot" => "guilleminot.thomas@gmail.com" }
  s.source                    = { :git => "git@github.com:soucolline/ZLogger.git", :tag => s.version.to_s }
  s.ios.deployment_target     = "9.0"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.osx.deployment_target     = "10.10"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
