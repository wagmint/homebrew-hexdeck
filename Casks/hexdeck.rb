cask "hexdeck" do
  version "0.5.12"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.12/Hexdeck_0.5.12_aarch64.dmg"
    sha256 "18e54d4e47ebdc16b373aafd7b0ba4af574c68d48066ca4313fe8c7129f44c96"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.12/Hexdeck_0.5.12_x64.dmg"
    sha256 "a466beabd1e48bc6e5008496ea513c4f4ac1eec2216164ae6f335a80767e40d1"
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
