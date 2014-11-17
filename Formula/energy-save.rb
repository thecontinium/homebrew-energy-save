class EnergySave< Formula
  homepage 'https://github.com/thecontinium/homebrew-energy-save/'
  url 'https://github.com/thecontinium/homebrew-energy-save.git'
  version '0.0.1'

  skip_clean 'bin'


  def install
    bin.install 'wakeup-scheduler'  
    bin.install 'shutdown-scheduler'
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
      </array>
      <key>RunAtLoad</key>
      <true/>
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
        <dict>
          <key>Hour</key>
          <integer>7</integer>
          <key>Minute</key>
          <integer>1</integer>
        </dict>
        <dict>
          <key>Hour</key>
          <integer>16</integer>
          <key>Minute</key>
          <integer>1</integer>
        </dict>
      </array>
    </dict>
    </plist>
    EOS
  end
end