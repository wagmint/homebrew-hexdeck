cask "hexdeck" do
  version "0.4.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.0/Hexdeck_0.4.0_aarch64.dmg"
    sha256 "666a90aed43937654b8d3a0c5ddb270084857b13de964c76234b37d14504b430"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.0/Hexdeck_0.4.0_x64.dmg"
    sha256 "64a878281331b43b90b04692814a956e02b9b4200a7083c2ee003330aa3483fe"
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
