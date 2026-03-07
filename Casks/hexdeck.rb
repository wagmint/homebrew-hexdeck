cask "hexdeck" do
  version "0.5.20"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.20/Hexdeck_0.5.20_aarch64.dmg"
    sha256 "0b43f8e27d0e6db506b731c61f2d0f80d9e082a5d31c831d21a69e12bd864332"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.20/Hexdeck_0.5.20_x64.dmg"
    sha256 "dbdd12ccbaa0199e3a89a25a6fa6d4c62a6a1e48d44b75f43c037444572b736b"
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
