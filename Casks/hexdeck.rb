cask "hexdeck" do
  version "0.5.34"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.34/Hexdeck_0.5.34_aarch64.dmg"
    sha256 "d4cae6c610d1718c316a35732d357ea8a663e168de6eba3011adeccf1979bf2a"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.34/Hexdeck_0.5.34_x64.dmg"
    sha256 "c187cda8ff77d27209616a51bca97e0f0a8a8fabdb1570069c94f63310da08d0"
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
