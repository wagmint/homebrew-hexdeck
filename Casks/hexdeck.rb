cask "hexdeck" do
  version "0.7.6"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.6/Hexdeck_0.7.6_aarch64.dmg"
    sha256 "3c941f2b85c022727986f1b1f024dc43e4f92e0e69eb43bec290d7e4189bf0c6"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.6/Hexdeck_0.7.6_x64.dmg"
    sha256 "9243bd0233787fad7f0d9c2bd838f3b2ddb0286793a53f6ec0fa18d04dcaac3d"
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
