cask "hexdeck" do
  version "0.5.17"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.17/Hexdeck_0.5.17_aarch64.dmg"
    sha256 "2210ebc222850ab6b9ad25dcc0babe2c8b3340a8a8e8232cfa5eae356dc29ab8"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.17/Hexdeck_0.5.17_x86_64.dmg"
    sha256 "2162bf0e0086fb67c79587f11e037c41272c2a776762ec3e9d694cb2f52637f8"
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
