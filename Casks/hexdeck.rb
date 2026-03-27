cask "hexdeck" do
  version "0.5.35"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.35/Hexdeck_0.5.35_aarch64.dmg"
    sha256 "c2ef7a3828d457e3c7c3848606c845822490599ac534825d52a4e6045282334c"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.35/Hexdeck_0.5.35_x64.dmg"
    sha256 "9334a49aa4ae92dd0b89ddf83ab8bc312aee108dfbf1d7b7397fb3bdcc1bcd1d"
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
