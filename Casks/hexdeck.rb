cask "hexdeck" do
  version "0.5.11"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.11/Hexdeck_0.5.11_aarch64.dmg"
    sha256 "dba745f048a8bc29880c289f99c6ca8fae0ebf25e85bb3a37680396f412e53e9"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.11/Hexdeck_0.5.11_x64.dmg"
    sha256 "c0bcee378a8c232973d704b362921838796c67c2ea24678fe3498f1d47d672ab"
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
