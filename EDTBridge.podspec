Pod::Spec.new do |spec|
  
  spec.name         = "EDTBridge"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For bridge."
  spec.description  = <<-DESC
  EDTBridge是oc swift 转换的封装呢
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
  
  spec.subspec 'Base' do |base|
    base.source_files = "Code/EDTBridge/Base/*.{swift}"
    base.dependency 'RxSwift'
  end
  
  #欢迎界面
  spec.subspec 'Welcome' do |welcome|
    
    welcome.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Welcome/VM/*.{swift}"
      vm.dependency 'WLToolsKit/Common'
      vm.dependency 'EDTViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
    end
    
    welcome.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Welcome/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Welcome/VM'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'EDTCocoa/Button'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 协议
  spec.subspec 'Protocol' do |protocol|
    
    protocol.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Protocol/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTSign'
    end
    
    protocol.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Protocol/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Protocol/VM'
      bridge.dependency 'EDTTextInner'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  # 协议
  spec.subspec 'Privacy' do |privacy|
    
    privacy.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Privacy/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTSign'
    end
    
    privacy.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Privacy/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Privacy/VM'
      bridge.dependency 'EDTInner'
      bridge.dependency 'EDTBridge/Base'
      
    end
  end
  
  
  
  # 登陆
  spec.subspec 'Login' do |login|
    
    login.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Login/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTCheck'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTObservableMapper'
      vm.dependency 'EDTError'
    end
    
    login.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Login/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Login/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBase'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 注册/登陆
  spec.subspec 'Reg' do |reg|
    
    reg.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Reg/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTCheck'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTObservableMapper'
      vm.dependency 'EDTError'
    end
    
    reg.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Reg/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Reg/VM'
      bridge.dependency 'EDTCocoa/Button'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBase'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 密码
  spec.subspec 'Password' do |password|
    
    password.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Password/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTCheck'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTObservableMapper'
      vm.dependency 'EDTError'
    end
    
    password.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Password/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Password/VM'
      bridge.dependency 'EDTCocoa/Button'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBase'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 设置
  spec.subspec 'Setting' do |setting|
    
    setting.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Setting/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTCache/Account'
      vm.dependency 'EDTSign'
    end
    
    setting.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Setting/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Setting/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 关于我们
  spec.subspec 'About' do |about|
    
    about.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/About/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'WLToolsKit/String'
    end
    
    about.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/About/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/About/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 昵称
  spec.subspec 'Name' do |name|
    
    name.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Name/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTCache/User'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTObservableMapper'
      vm.dependency 'EDTError'
    end
    
    name.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Name/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Name/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBase'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  # 个性签名
  spec.subspec 'Signature' do |signature|
    
    signature.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Signature/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTCache/User'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTObservableMapper'
      vm.dependency 'EDTError'
    end
    
    signature.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Signature/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Signature/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBase'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 我的资料
  spec.subspec 'UserInfo' do |userinfo|
    
    userinfo.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/UserInfo/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTCache/User'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTObservableMapper'
      vm.dependency 'EDTError'
    end
    
    userinfo.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/UserInfo/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/UserInfo/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 轮播
  spec.subspec 'Carousel' do |welcome|
    
    welcome.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Carousel/VM/*.{swift}"
      vm.dependency 'WLToolsKit/Common'
      vm.dependency 'EDTViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
      vm.dependency 'ObjectMapper'
    end
    
    welcome.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Carousel/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Carousel/VM'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'RxDataSources'
    end
  end
  
  # 举报
  spec.subspec 'Report' do |report|
    
    report.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Report/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'ObjectMapper'
      vm.dependency 'RxDataSources'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTError'
    end
    
    report.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Report/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Report/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'RxDataSources'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTHud'
    end
  end
  
  # 黑名单
  spec.subspec 'Black' do |black|
    
    black.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Black/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTBean/Black'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTError'
      vm.dependency 'EDTObservableMapper'
    end
    
    black.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Black/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Black/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/Refresh'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  # 我的关注
  spec.subspec 'Focus' do |focus|
    
    focus.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Focus/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTBean/Focus'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTError'
      vm.dependency 'EDTObservableMapper'
    end
    
    focus.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Focus/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Focus/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/Refresh'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  spec.subspec 'Profile' do |profile|
    
    profile.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Profile/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTCache/User'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTObservableMapper'
    end
    
    profile.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Profile/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Profile/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCache/Account'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'RxGesture'
      bridge.dependency 'EDTCocoa/SM'
    end
  end
  # 个人中心
  spec.subspec 'UserCenter' do |userCenter|
    
    userCenter.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/UserCenter/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTCache/User'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTObservableMapper'
    end
    
    userCenter.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/UserCenter/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/UserCenter/VM'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTCache/Account'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'RxGesture'
      bridge.dependency 'EDTCocoa/SM'
    end
  end
  # 个性签名
  spec.subspec 'FeedBack' do |feedBack|
    
    feedBack.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/FeedBack/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTError'
    end
    
    feedBack.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/FeedBack/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/FeedBack/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTBase'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  # 评论 comment
  spec.subspec 'Comment' do |comment|
    
    comment.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Comment/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTBean/Comment'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTError'
      vm.dependency 'EDTObservableMapper'
    end
    
    comment.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Comment/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Comment/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTBean/Circle'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/Refresh'
      bridge.dependency 'EDTBridge/Base'
    end
  end
  
  
  # Collections 列表
  spec.subspec 'Collections' do |collections|
    
    collections.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Collections/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTBean/Circle'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTError'
      vm.dependency 'EDTObservableMapper'
    end
    
    collections.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Collections/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Collections/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/Refresh'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTCache/Account'
    end
  end
  
  # 列表
  spec.subspec 'Tables' do |tables|
    
    tables.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/Tables/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTBean/Circle'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTError'
      vm.dependency 'EDTObservableMapper'
    end
    
    tables.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Tables/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Tables/VM'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/Refresh'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTCache/Account'
    end
  end
  
  
  
  # 1
  spec.subspec 'CollectionSection' do |cs|
    
    cs.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/CollectionSection/VM/*.{swift}"
      vm.dependency 'EDTViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
    end
    
    cs.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/CollectionSection/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/CollectionSection/VM'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'RxDataSources'
    end
  end
  
  # 2
  spec.subspec 'TableSection' do |cs|
    
    cs.subspec 'VM' do |vm|
      vm.source_files = "Code/EDTBridge/TableSection/VM/*.{swift}"
      vm.dependency 'EDTViewModel'
      vm.dependency 'RxCocoa'
      vm.dependency 'RxSwift'
    end
    
    cs.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/TableSection/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/TableSection/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'RxDataSources'
    end
  end
  
  spec.subspec 'Area' do |area|
    
    area.subspec 'Manager' do |manager|
      
      manager.source_files = "Code/EDTBridge/Area/Manager/*.{swift}"
      manager.dependency 'RxCocoa'
      manager.dependency 'EDTViewModel'
      manager.dependency 'EDTApi'
      manager.dependency 'EDTRReq'
      manager.dependency 'EDTResult'
      manager.dependency 'EDTYY'
      manager.dependency 'EDTBean/Area'
      manager.dependency 'EDTRReq'
      manager.dependency 'EDTError'
      manager.dependency 'EDTObservableMapper'
    end
    area.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Area/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTBean/Area'
    end
    
    area.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Area/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Area/VM'
      bridge.dependency 'EDTBridge/Area/Manager'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTCocoa/SM'
    end
  end
  
  spec.subspec 'AreaJson' do |areaJson|
    
    areaJson.source_files = "Code/EDTBridge/AreaJson/*.{swift}"
    areaJson.dependency 'EDTBridge/Area/Manager'
    areaJson.dependency 'EDTBridge/Base'
  end
  
  spec.subspec 'Address' do |address|
    
    address.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Address/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'ObjectMapper'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTBean/Area'
      vm.dependency 'EDTBean/Address'
      vm.dependency 'WLToolsKit/String'
      vm.dependency 'EDTError'
      vm.dependency 'EDTObservableMapper'
    end
    
    address.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Address/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Address/VM'
      bridge.dependency 'EDTTable'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTHud'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/SM'
      bridge.dependency 'EDTCocoa/Refresh'
    end
  end
  spec.subspec 'Message' do |message|
    
    message.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Message/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTBean/Message'
      
    end
    
    message.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Message/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Message/VM'
      bridge.dependency 'EDTCollection'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTCocoa/ASM'
      bridge.dependency 'EDTCocoa/Refresh'
    end
  end
  
  # 翻译
  #  spec.subspec 'Translate' do |translate|
  #
  #    translate.subspec 'VM' do |vm|
  #
  #      vm.source_files = "Code/EDTBridge/Translate/VM/*.{swift}"
  #      vm.dependency 'RxCocoa'
  #      vm.dependency 'EDTViewModel'
  #      vm.dependency 'ObjectMapper'
  #      vm.dependency 'EDTApi'
  #      vm.dependency 'EDTRReq'
  #      vm.dependency 'EDTResult'
  #    end
  #
  #    translate.subspec 'Bridge' do |bridge|
  #      bridge.source_files = "Code/EDTBridge/Translate/Bridge/*.{swift}"
  #      bridge.dependency 'EDTBridge/Translate/VM'
  #      bridge.dependency 'EDTTransition'
  #      bridge.dependency 'EDTBridge/Base'
  #      bridge.dependency 'EDTHud'
  #    end
  #  end
  
  spec.subspec 'Video' do |video|
    
    video.subspec 'VM' do |vm|
      
      vm.source_files = "Code/EDTBridge/Video/VM/*.{swift}"
      vm.dependency 'RxCocoa'
      vm.dependency 'EDTApi'
      vm.dependency 'EDTRReq'
      vm.dependency 'EDTResult'
      vm.dependency 'EDTViewModel'
      vm.dependency 'EDTError'
    end
    
    video.subspec 'Bridge' do |bridge|
      bridge.source_files = "Code/EDTBridge/Video/Bridge/*.{swift}"
      bridge.dependency 'EDTBridge/Video/VM'
      bridge.dependency 'EDTTransition'
      bridge.dependency 'EDTCache/Account'
      bridge.dependency 'EDTBridge/Base'
      bridge.dependency 'EDTHud'
    end
  end
  
end
