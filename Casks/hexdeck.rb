cask "hexdeck" do
  version "0.5.10"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.10/Hexdeck_0.5.10_aarch64.dmg"
    sha256 "f088a97b6d517fe79e4a4baa70b77fe6a205fb089ed3d13a3b2c2c6c63d412b1"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.10/Hexdeck_0.5.10_x64.dmg"
    sha256 "7d90d538e6fddcc3cc13aebdec625d3748d9f3060d0a947c866fab0484a34bea"
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
