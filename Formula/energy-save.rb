class EnergySave< Formula
  homepage 'https://github.com/thecontinium/homebrew-energy-save/'
  url 'https://github.com/thecontinium/homebrew-energy-save.git'
  version '0.0.1'

  skip_clean 'bin'


  def install
    bin.install 'wakeup-scheduler'  
    bin.install 'shutdown-scheduler'
    prefix.install Dir["config/*.plist"]
  end

  plist_options :startup => true
  
  def caveats; <<-EOS.undent

      #{Dir["#{prefix}/*.plist"].join("\n      ")}

    EOS
  end

end
