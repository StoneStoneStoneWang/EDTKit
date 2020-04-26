Pod::Spec.new do |spec|
  
  spec.name         = "EDTContainer"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For 某些界面."
  spec.description  = <<-DESC
  EDTContainer是欢迎界面
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
  
  # 翻译
  spec.subspec 'Welcome' do |welcome|
    
    welcome.source_files = "Code/EDTContainer/Welcome/*.{h,m}"
    welcome.dependency 'EDTConfig'
    welcome.dependency 'EDTBridge/Welcome/Bridge'
    welcome.dependency 'EDTImage'
    welcome.dependency 'EDTString'
    welcome.dependency 'Masonry'
  end
  
  # 协议 textview
  spec.subspec 'Protocol' do |protocol|
    
    protocol.source_files = "Code/EDTContainer/Protocol/*.{h,m}"
    protocol.dependency 'EDTConfig'
    protocol.dependency 'EDTBridge/Protocol/Bridge'
    protocol.dependency 'Masonry'
  end
  # 协议 webview
  spec.subspec 'Privacy' do |privacy|
    
    privacy.source_files = "Code/EDTContainer/Privacy/*.{h,m}"
    privacy.dependency 'EDTConfig'
    privacy.dependency 'EDTBridge/Protocol/Bridge'
    privacy.dependency 'Masonry'
  end
  
  # 登陆 login
  spec.subspec 'Login' do |login|
    
    login.source_files = "Code/EDTContainer/Login/*.{h,m}"
    login.dependency 'EDTConfig'
    login.dependency 'EDTBridge/Login/Bridge'
    login.dependency 'Masonry'
    login.dependency 'EDTTextField'
    login.dependency 'EDTTransition'
    login.dependency 'EDTImage'
    login.dependency 'EDTString'
    login.dependency 'EDTDraw'
  end
  
  # 注册 reg
  spec.subspec 'Reg' do |reg|
    
    reg.source_files = "Code/EDTContainer/Reg/*.{h,m}"
    reg.dependency 'EDTConfig'
    reg.dependency 'EDTBridge/Reg/Bridge'
    reg.dependency 'Masonry'
    reg.dependency 'EDTTextField'
    reg.dependency 'EDTTransition'
    reg.dependency 'EDTImage'
    reg.dependency 'EDTString'
    reg.dependency 'EDTDraw'
  end
  
  # 密码 password
  spec.subspec 'Password' do |password|
    
    password.source_files = "Code/EDTContainer/Password/*.{h,m}"
    password.dependency 'EDTConfig'
    password.dependency 'EDTBridge/Password/Bridge'
    password.dependency 'Masonry'
    password.dependency 'EDTTextField'
    password.dependency 'EDTTransition'
    password.dependency 'EDTImage'
    password.dependency 'EDTString'
    password.dependency 'EDTDraw'
  end
  
  # 轮播 carousel
  spec.subspec 'Carousel' do |carousel|
    
    carousel.source_files = "Code/EDTContainer/Carousel/*.{h,m}"
    carousel.dependency 'EDTConfig'
    carousel.dependency 'EDTBridge/Carousel/Bridge'
    carousel.dependency 'Masonry'
    carousel.dependency 'EDTCollection'
    carousel.dependency 'EDTString'
  end
  
  # 轮播 banner
  spec.subspec 'Banner' do |banner|
    
    banner.source_files = "Code/EDTContainer/Banner/*.{h,m}"
    banner.dependency 'EDTConfig'
    banner.dependency 'EDTBridge/Carousel/Bridge'
    banner.dependency 'Masonry'
    banner.dependency 'EDTCollection'
    banner.dependency 'SDWebImage'
    banner.dependency 'EDTString'
  end
  
  # 设置 setting
  spec.subspec 'Setting' do |setting|
    
    setting.source_files = "Code/EDTContainer/Setting/*.{h,m}"
    setting.dependency 'EDTConfig'
    setting.dependency 'EDTBridge/Setting/Bridge'
    setting.dependency 'Masonry'
    setting.dependency 'EDTTable'
    setting.dependency 'SDWebImage'
  end
  
  # 关于我们 about
  spec.subspec 'About' do |about|
    
    about.source_files = "Code/EDTContainer/About/*.{h,m}"
    about.dependency 'EDTConfig'
    about.dependency 'EDTBridge/About/Bridge'
    about.dependency 'EDTTable'
    about.dependency 'Masonry'
  end
  
  # 意见建议 feedBack
  spec.subspec 'FeedBack' do |feedBack|
    
    feedBack.source_files = "Code/EDTContainer/FeedBack/*.{h,m}"
    feedBack.dependency 'EDTConfig'
    feedBack.dependency 'EDTBridge/FeedBack/Bridge'
    feedBack.dependency 'Masonry'
    feedBack.dependency 'EDTTransition'
    feedBack.dependency 'JXTAlertManager'
    feedBack.dependency 'EDTTextField'
    feedBack.dependency 'EDTImage'
    feedBack.dependency 'EDTString'
  end
  
  # 昵称 Name
  spec.subspec 'Name' do |name|
    
    name.source_files = "Code/EDTContainer/Name/*.{h,m}"
    name.dependency 'EDTConfig'
    name.dependency 'EDTBridge/Name/Bridge'
    name.dependency 'Masonry'
    name.dependency 'EDTTextField'
    name.dependency 'EDTTransition'
    name.dependency 'EDTString'
  end
  
  # 个性签名 signature
  spec.subspec 'Signature' do |signature|
    
    signature.source_files = "Code/EDTContainer/Signature/*.{h,m}"
    signature.dependency 'EDTConfig'
    signature.dependency 'EDTBridge/Signature/Bridge'
    signature.dependency 'Masonry'
    signature.dependency 'EDTTransition'
    signature.dependency 'EDTString'
  end
  
  # 个人中心 userinfo
  spec.subspec 'UserInfo' do |userInfo|
    userInfo.frameworks = 'UIKit', 'Foundation','CoreServices'
    userInfo.source_files = "Code/EDTContainer/UserInfo/*.{h,m}"
    userInfo.dependency 'EDTConfig'
    userInfo.dependency 'EDTBridge/UserInfo/Bridge'
    userInfo.dependency 'Masonry'
    userInfo.dependency 'EDTTable'
    userInfo.dependency 'ZDatePicker'
    userInfo.dependency 'SDWebImage'
    userInfo.dependency 'JXTAlertManager'
    userInfo.dependency 'WLToolsKit/Image'
    userInfo.dependency 'EDTString'
  end
  
  # 意见建议 feedBack
  spec.subspec 'FeedBack' do |feedBack|
    
    feedBack.source_files = "Code/EDTContainer/FeedBack/*.{h,m}"
    feedBack.dependency 'EDTConfig'
    feedBack.dependency 'EDTBridge/FeedBack/Bridge'
    feedBack.dependency 'Masonry'
    feedBack.dependency 'EDTTransition'
    feedBack.dependency 'JXTAlertManager'
    feedBack.dependency 'EDTTextField'
  end
  
  #  # 黑名单 black
  #  spec.subspec 'Black' do |black|
  #
  #    black.source_files = "Code/EDTContainer/Black/*.{h,m}"
  #    black.dependency 'EDTConfig'
  #    black.dependency 'EDTBridge/Black/Bridge'
  #    black.dependency 'Masonry'
  #    black.dependency 'EDTTable'
  #    black.dependency 'SDWebImage'
  #    black.dependency 'JXTAlertManager'
  #  end
  #  # 关注 focus
  #  spec.subspec 'Focus' do |focus|
  #
  #    focus.source_files = "Code/EDTContainer/Focus/*.{h,m}"
  #    focus.dependency 'EDTConfig'
  #    focus.dependency 'EDTBridge/Focus/Bridge'
  #    focus.dependency 'Masonry'
  #    focus.dependency 'EDTTable'
  #    focus.dependency 'SDWebImage'
  #    focus.dependency 'JXTAlertManager'
  #  end
  
  # 举报 举报
  spec.subspec 'Report' do |report|
    
    report.source_files = "Code/EDTContainer/Report/*.{h,m}"
    report.dependency 'EDTConfig'
    report.dependency 'EDTBridge/Report/Bridge'
    report.dependency 'Masonry'
    report.dependency 'EDTTable'
    report.dependency 'JXTAlertManager'
  end
  
  # 地址 address
  spec.subspec 'Address' do |address|
    
    address.source_files = "Code/EDTContainer/Address/*.{h,m}"
    address.dependency 'EDTConfig'
    address.dependency 'EDTBridge/Address/Bridge'
    address.dependency 'Masonry'
    address.dependency 'EDTTable'
    address.dependency 'JXTAlertManager'
    address.dependency 'EDTImage'
    address.dependency 'EDTString'
  end
  # 地址 address
  spec.subspec 'Comment' do |comment|
    
    comment.source_files = "Code/EDTContainer/Comment/*.{h,m}"
    comment.dependency 'EDTConfig'
    comment.dependency 'EDTBridge/Comment/Bridge'
    comment.dependency 'SDWebImage'
    comment.dependency 'Masonry'
    comment.dependency 'EDTTable'
    comment.dependency 'JXTAlertManager'
    comment.dependency 'EDTString'
  end
  # 地址 area
  spec.subspec 'Area' do |area|
    
    area.source_files = "Code/EDTContainer/Area/*.{h,m}"
    area.dependency 'EDTConfig'
    area.dependency 'EDTBridge/Area/Bridge'
    area.dependency 'Masonry'
    area.dependency 'EDTTable'
    area.dependency 'EDTCollection'
    area.dependency 'JXTAlertManager'
  end
  
  # 地址 地图
  spec.subspec 'Map' do |map|
    map.source_files = "Code/EDTContainer/Map/*.{h,m}"
    map.dependency 'EDTTransition'
    map.dependency 'EDTAMap'
    map.dependency 'EDTConfig'
    map.frameworks = 'UIKit', 'Foundation' ,'CoreLocation'
  end
  
end
