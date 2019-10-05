class EnergySave< Formula
  homepage 'https://github.com/thecontinium/homebrew-energy-save/'
  url 'https://github.com/thecontinium/homebrew-energy-save.git'
  version '0.0.9'

  skip_clean 'bin'


  def install
    bin.install 'energy-save'  
    prefix.install Dir["config/*.plist"]
  end

  plist_options :startup => true

end
