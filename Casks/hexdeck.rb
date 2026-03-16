cask "hexdeck" do
  version "0.5.23"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.23/Hexdeck_0.5.23_aarch64.dmg"
    sha256 "7183fe75fef2b0c86580fc24d1ea3b9045f4afdfa5536ec84b88b1973c449fe2"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.23/Hexdeck_0.5.23_x64.dmg"
    sha256 "019cd1e1939c74f96624d0ced7a5c32e1f3e55a4a2b189d921b2216304e83eec"
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
