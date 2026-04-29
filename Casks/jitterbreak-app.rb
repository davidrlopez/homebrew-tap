cask "jitterbreak-app" do
  version "1.1"

  sha256 "bfba5de97f3a21968133541dfd5b0cd49167ddeb6ef9bb54f7213379bbb5ad36"

  url "https://github.com/davidrlopez/JitterBreak/releases/download/v#{1.1}/JitterBreak.dmg"
  name "JitterBreak"
  desc "Menu Bar App Anti-lag para macOS (AWDL/LLW killer)"
  homepage "https://github.com/davidrlopez/JitterBreak"

  app "JitterBreak.app"

  zap trash: [
    "~/Library/Preferences/com.davidrlopez.JitterBreak.plist",
  ]
end
