
Pod::Spec.new do |spec|
  
  spec.name         = "EDTBean"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For Bean."
  spec.description  = <<-DESC
  EDTBean是所有模型的封装
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
  
  spec.dependency 'ObjectMapper'
  
  spec.subspec 'Gender' do |gender|
    gender.source_files = "Code/EDTBean/Gender/*.{swift}"
  end
  
  spec.subspec 'Account' do |account|
    account.source_files = "Code/EDTBean/Account/*.{swift}"
  end
  
  spec.subspec 'User' do |user|
    user.source_files = "Code/EDTBean/User/*.{swift}"
    user.dependency 'EDTBean/Gender'
  end
  spec.subspec 'Black' do |black|
    black.source_files = "Code/EDTBean/Black/*.{swift}"
    black.dependency 'EDTBean/User'
    black.dependency 'RxDataSources'
  end
  spec.subspec 'Focus' do |focus|
    focus.source_files = "Code/EDTBean/Focus/*.{swift}"
    focus.dependency 'EDTBean/User'
    focus.dependency 'RxDataSources'
  end
  
  spec.subspec 'KeyValue' do |keyValue|
    keyValue.source_files = "Code/EDTBean/KeyValue/*.{swift}"
    keyValue.dependency 'RxDataSources'
  end
  
  spec.subspec 'Circle' do |circle|
    circle.source_files = "Code/EDTBean/Circle/*.{swift}"
    circle.dependency 'EDTBean/KeyValue'
    circle.dependency 'EDTBean/User'
    circle.dependency 'WLToolsKit/JsonCast'
  end
  
  spec.subspec 'Commodity' do |commodity|
    commodity.source_files = "Code/EDTBean/Commodity/*.{swift}"
    commodity.dependency 'EDTBean/KeyValue'
    commodity.dependency 'EDTBean/User'
    commodity.dependency 'WLToolsKit/JsonCast'
  end
  spec.subspec 'Comment' do |comment|
    comment.source_files = "Code/EDTBean/Comment/*.{swift}"
    comment.dependency 'EDTBean/User'
    comment.dependency 'RxDataSources'
  end
  
  spec.subspec 'Area' do |area|
    area.source_files = "Code/EDTBean/Area/*.{swift}"
    area.dependency 'RxDataSources'
  end
  
  spec.subspec 'Address' do |address|
    address.source_files = "Code/EDTBean/Address/*.{swift}"
    address.dependency 'RxDataSources'
  end
  spec.subspec 'Message' do |message|
     message.source_files = "Code/EDTBean/Message/*.{swift}"
     message.dependency 'RxDataSources'
   end
  
end
