cask "hexdeck" do
  version "0.5.18"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.18/Hexdeck_0.5.18_aarch64.dmg"
    sha256 "7ac0daeac390d950c880f5f23bdb8e65298911516e6284747cbd0147c5bec5ab"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.18/Hexdeck_0.5.18_x64.dmg"
    sha256 "35068489f97a1ad37ca83e9c502c7c23523ac4ceff2afa6f74e4adfafb47d8c2"
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
