
Pod::Spec.new do |spec|
  
  spec.name         = "EDTRReq"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For realReq."
  spec.description  = <<-DESC
  EDTRReq是请求的封装
  DESC
  
  spec.homepage     = "https://github.com/StoneStoneStoneWang/EDTKit.git"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  
  spec.swift_version = '5.0'
  
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  spec.static_framework = true
  
  spec.frameworks = 'UIKit', 'Foundation'
  
  spec.source = { :git => "https://github.com/StoneStoneStoneWang/EDTKit.git", :tag => "#{spec.version}" }
  
  spec.source_files = "Code/EDTRReq/*.{swift}"
  
  spec.dependency 'EDTCache/Account'
  
  spec.dependency 'EDTObservableReq'
  
  spec.dependency 'RxSwift'
  
  spec.dependency 'EDTError'
  
  spec.dependency 'EDTUpload'
  
  spec.dependency 'EDTReq'
  
end
