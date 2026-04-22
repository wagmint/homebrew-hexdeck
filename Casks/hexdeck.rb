cask "hexdeck" do
  version "0.7.2"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.2/Hexdeck_0.7.2_aarch64.dmg"
    sha256 "11b0a4ecb286cae9c377e1b97592da85d887f250c346569eb71cd8d2b3b7d5e3"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.2/Hexdeck_0.7.2_x64.dmg"
    sha256 "010f4cd327ee2ad147519fdb16cfd9dca045d447fb9f5ecbdd3fa0eac1ce91bd"
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
