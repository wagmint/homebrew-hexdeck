cask "hexdeck" do
  version "0.5.28"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.28/Hexdeck_0.5.28_aarch64.dmg"
    sha256 "ed1708a4285a4906ebc5ac2039701dfbd43d115266de759e56e9e3c0ad90b691"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.28/Hexdeck_0.5.28_x64.dmg"
    sha256 "ea49052d2d2354d3858ffcb9715c4f82640f27f448f069100dece4185b2a5dc5"
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
