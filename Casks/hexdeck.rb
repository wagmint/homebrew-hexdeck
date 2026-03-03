cask "hexdeck" do
  version "0.5.14"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.14/Hexdeck_0.5.14_aarch64.dmg"
    sha256 "9800bd0e4ebcea7dbce0ef4c1a2401165411ced328f17d15a6446bd8bbe4587d"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.14/Hexdeck_0.5.14_x64.dmg"
    sha256 "4e27fed36615abcbe5017e67c995ab7a834c9b8e676223218cc0f2169a6fb450"
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
