

Pod::Spec.new do |s|


  s.name         = "YymLottery"
  s.version      = "1.0.2"
  s.summary      = "优易美抽奖抽奖"
  s.description  = <<-DESC
                   优易美抽奖抽奖优易美抽奖抽奖优易美抽奖抽奖优易美抽奖抽奖
                   DESC
  s.homepage     = "https://github.com/kexikui/YymLottery"
  s.license      = { :type => "MIT"}

  s.author             = {"kexikui" => "kexikui@yeah.net" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/kexikui/YymLottery.git", :tag => "#{s.version}" }

   s.xcconfig= {
   'VALID_ARCHS'  => 'arm64 x86_64',
    }

  s.source_files  = 'YymLottery/*.{h}'
  s.dependency      'TMUserCenter'

end
