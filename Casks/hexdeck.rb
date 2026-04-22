cask "hexdeck" do
  version "0.7.1"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.1/Hexdeck_0.7.1_aarch64.dmg"
    sha256 "b05220b6da956c1ec7c1ace2c67cec5e1682d0a2fca249b4cfa7156ae354723a"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.1/Hexdeck_0.7.1_x64.dmg"
    sha256 "44361d8f2a27a9770891e605d2ed1bffa563a2bd90e55fa63fe0eeb85b9daef3"
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
