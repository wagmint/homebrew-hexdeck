cask "hexdeck" do
  version "0.4.2"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.2/Hexdeck_0.4.2_aarch64.dmg"
    sha256 "441698ef8f30640085fd837e9eeb02edd06797996f234f26fc71c46470a692bb"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.2/Hexdeck_0.4.2_x64.dmg"
    sha256 "a24fec17589053929b4a931ddcce5c3c8cc885d47121ed2bca18152b1bd71452"
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
