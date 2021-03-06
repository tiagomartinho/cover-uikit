Pod::Spec.new do |s|
  s.name         = "Cover"
  s.version      = "0.1"
  s.summary      = "Cover"
  s.description  = <<-DESC
    An easy way to add background videos in loop to your login screen
  DESC
  s.homepage     = "https://github.com/tiagomartinho/cover-uikit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Tiago Martinho" => "t.martinho@icloud.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/tiagomartinho/cover-uikit.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
  s.swift_version = "4.1"
end
