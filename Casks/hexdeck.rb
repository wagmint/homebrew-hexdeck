cask "hexdeck" do
  version "0.5.5"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.5/Hexdeck_0.5.5_aarch64.dmg"
    sha256 "88ec7ddfb98950430461ae6d7dc5967cc7bfa4da67cfb1537603ac537c9a27d3"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.5/Hexdeck_0.5.5_x64.dmg"
    sha256 "d3ad019efc3d6e9310179d247eb98a9f3dbf2e57cbe07575682e2e81bf9b7522"
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
