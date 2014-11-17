class WakeupScheduler< Formula
  homepage 'https://github.com/thecontinium/homebrew-wakeup-scheduler/'
  url 'https://github.com/thecontinium/homebrew-wakeup-scheduler.git'
  version '0.0.1'

  skip_clean 'bin'


  def install
    bin.install 'wakeup-scheduler'
  end

  plist_options :startup => true

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>AbandonProcessGroup</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>/usr/local/bin/wakeup-scheduler</string>
        <string>--midnight</string>
      </array>
      <key>StandardErrorPath</key>
      <string>/tmp/#{plist_name}.err</string>
      <key>StandardOutPath</key>
      <string>/tmp/#{plist_name}.out</string>
      <key>StartCalendarInterval</key>
      <array>
        <dict>
          <key>Hour</key>
          <integer>0</integer>
          <key>Minute</key>
          <integer>1</integer>
        </dict>
      </array>
    </dict>
    </plist>
    EOS
  end
  
  def plist2; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>AbandonProcessGroup</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}2</string>
      <key>ProgramArguments</key>
      <array>
        <string>/usr/local/bin/wakeup-scheduler</string>
        <string>--morining</string>
      </array>
      <key>StandardErrorPath</key>
      <string>/tmp/#{plist_name}2.err</string>
      <key>StandardOutPath</key>
      <string>/tmp/#{plist_name}2.out</string>
      <key>StartCalendarInterval</key>
      <array>
        <dict>
          <key>Hour</key>
          <integer>8</integer>
          <key>Minute</key>
          <integer>1</integer>
        </dict>
      </array>
    </dict>
    </plist>
    EOS
  end
end



:e 
