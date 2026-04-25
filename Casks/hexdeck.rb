cask "hexdeck" do
  version "0.7.8"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.8/Hexdeck_0.7.8_aarch64.dmg"
    sha256 "a70d349dfb3df2c17dd33b9133bb1f6432c7412ceca77dfa064ead23ad2ce21a"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.8/Hexdeck_0.7.8_x64.dmg"
    sha256 "158de2693ed2647c25461a46e64dc5b591fb097b209fc3113f51973cbfa43059"
  end

  name "Hexdeck"
  desc "Menu bar monitoring utility for Claude Code"
  homepage "https://github.com/wagmint/hexdeck"

  app "Hexdeck.app"

  zap trash: [
    "~/Library/Application Support/dev.hexdeck.menubar",
    "~/Library/Caches/dev.hexdeck.menubar",
  ]
end
