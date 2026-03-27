cask "hexdeck" do
  version "0.5.36"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.36/Hexdeck_0.5.36_aarch64.dmg"
    sha256 "48060a6701d43e02c292f7d962ea2cdfcb722abd1ef5dd48c22da53bfa5ef14b"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.36/Hexdeck_0.5.36_x64.dmg"
    sha256 "1318c135ae84f343621c1461e382e1a90aea1b535e72006041ef5c3f0eafa15a"
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
