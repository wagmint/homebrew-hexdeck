cask "hexdeck" do
  version "0.5.8"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.8/Hexdeck_0.5.8_aarch64.dmg"
    sha256 "6b718eb6df3aaa8643e5cea09e53e91cf05869c23db82d3c190f2474f9c9bbed"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.8/Hexdeck_0.5.8_x64.dmg"
    sha256 "a01fb630df756e01c38b16a9d31b91bb30481480d18debe4049817b150eeae51"
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
