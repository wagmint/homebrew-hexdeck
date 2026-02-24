cask "hexdeck" do
  version "0.3.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.3.0/Hexdeck_0.1.0_aarch64.dmg"
    sha256 "f3a69d5200aac73d638dc01d37053b9494bff72562a43a6f063b978c39c8e151"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.3.0/Hexdeck_0.1.0_x64.dmg"
    sha256 "94fd338a87a13ce30675e7e6641047e64420c96b23832246cd9cb8261980d0ad"
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
