cask "hexdeck" do
  version "0.5.30"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.30/Hexdeck_0.5.30_aarch64.dmg"
    sha256 "2c0017b3fdbff922b16fec33b7f92f2285f92da3fe9d6582db81b5e431856a28"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.30/Hexdeck_0.5.30_x64.dmg"
    sha256 "be77f30d6a0ddf0afec044835444b1a5e120329a03e6659b867962ad1d84019b"
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
