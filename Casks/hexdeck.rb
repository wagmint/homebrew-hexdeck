cask "hexdeck" do
  version "0.5.1"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.1/Hexdeck_0.5.1_aarch64.dmg"
    sha256 "853326a47d9530646348be9b5aeab8c5ff5be3afec2105d344c8d5ab73b9998a"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.1/Hexdeck_0.5.1_x64.dmg"
    sha256 "3227125747d92b1fbf43863b7e900ea5157005df1cc0fcf9ff9a6d318c593429"
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
