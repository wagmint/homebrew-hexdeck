cask "hexdeck" do
  version "0.5.27"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.27/Hexdeck_0.5.27_aarch64.dmg"
    sha256 "96e5a3b14c758e6092cb3e9040b98c51ea8a431f840a9fea44e001f2915eea65"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.27/Hexdeck_0.5.27_x64.dmg"
    sha256 "e5270582ec93881dbd3eb47fcbc454d595d301129a72b9b2e1a2cc3e35262a61"
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
