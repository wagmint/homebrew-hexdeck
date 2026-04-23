cask "hexdeck" do
  version "0.7.2"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.2/Hexdeck_0.7.3_aarch64.dmg"
    sha256 ""
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.2/Hexdeck_0.7.3_x64.dmg"
    sha256 ""
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
