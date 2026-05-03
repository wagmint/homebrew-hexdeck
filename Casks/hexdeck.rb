cask "hexdeck" do
  version "0.8.3"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.3/Hexdeck_0.8.3_aarch64.dmg"
    sha256 "e0328fd3214e5dd59050a72c9e1c6900f6f82f73e4168964809515b861431879"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.3/Hexdeck_0.8.3_x64.dmg"
    sha256 "85a06c90dd3865292aa9fbf5f34fd89f5c6e0d34199c8a243e140a0f08be9f55"
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
