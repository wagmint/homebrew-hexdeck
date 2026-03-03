cask "hexdeck" do
  version "0.5.9"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.9/Hexdeck_0.5.9_aarch64.dmg"
    sha256 "91992956e3adfe43833a2e8ecea9726faf8c04908af0c29b932e62217abce840"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.9/Hexdeck_0.5.9_x64.dmg"
    sha256 "5bb91c40daa500dc54485656ea477b980c8498f6b856b8b1ff191aea85a45010"
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
