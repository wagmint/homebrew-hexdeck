cask "hexdeck" do
  version "0.5.7"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.7/Hexdeck_0.5.7_aarch64.dmg"
    sha256 "93928e9f0f43363965990188b1bd7530c64b35f1c5d85ec78cd6fd7d50d9262b"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.7/Hexdeck_0.5.7_x64.dmg"
    sha256 "8fd1350fc545234f8fb7ab62043d799a84bf2c61c0741fe8fbe87c6919aa95d8"
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
