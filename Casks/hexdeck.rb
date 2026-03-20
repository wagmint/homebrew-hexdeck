cask "hexdeck" do
  version "0.5.29"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.29/Hexdeck_0.5.29_aarch64.dmg"
    sha256 "b577db5be1002aa1b5b81c08b35ec81ccbd0ab673264c68133e7b11251f944e8"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.29/Hexdeck_0.5.29_x64.dmg"
    sha256 "46d3eadfe0bec83e6574acfd7cb31097f16949b0a5cb5407d871f289a28d9ae2"
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
