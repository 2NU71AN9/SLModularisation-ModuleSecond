Pod::Spec.new do |s|
  s.name             = 'ModuleSecond'
  s.version          = '0.0.1'
  s.summary          = 'Second模块'
  s.description      = 'Second模块, Second模块'
  s.homepage         = 'https://github.com/2NU71AN9/SLModularisation-ModuleSecond'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2UN7' => '1491859758@qq.com' }
  s.source           = { :git => 'https://github.com/2NU71AN9/SLModularisation-ModuleSecond.git' }
  s.ios.deployment_target = '11.0'
  s.source_files = 'ModuleSecond/Classes/**/*'
  s.resource_bundles = {
    'ModuleSecond' => ['ModuleSecond/Classes/**/*.{storyboard,xib}']
  }

  s.dependency 'ModuleComm'
  
  s.pod_target_xcconfig = {
      'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  }
  s.static_framework  =  true

end
