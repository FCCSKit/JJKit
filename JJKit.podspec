
Pod::Spec.new do |s|

 
  s.name         = "JJKit"
  s.version      = "0.0.1"
  s.ios.deployment_target = '8.0'
  s.homepage     = "https://github.com/FCCSKit/JJKit.git"

  s.summary      = "测试kit框架"
  s.description  = <<-DESC
   测试kit框架，方便后期维护
                   DESC

  s.license= { :type => "MIT", :file => "LICENSE" }

  s.author             = { "cooperAjx" => "cooper_jx@126.com" }
 
  s.source       = { :git => "https://github.com/FCCSKit/JJKit.git", :tag => "0.0.1" }

  s.source_files  = "FCCSKit/FCCSKit/*.{h,m}"
  s.requires_arc = true
end