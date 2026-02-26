cask "hexdeck" do
  version "0.5.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.0/Hexdeck_0.4.2_aarch64.dmg"
    sha256 "61bbf2b8dc552af9045980ab6e3e3cdc12668c619fb1e88b5778c7d9efcfbab4"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.0/Hexdeck_0.4.2_x64.dmg"
    sha256 "fe7961da9c58639f2e6b084efb4a140f22194d1bb4d090ec6fcd58ddb05545da"
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
