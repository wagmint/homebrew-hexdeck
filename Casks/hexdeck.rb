cask "hexdeck" do
  version "0.5.4"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.4/Hexdeck_0.5.4_aarch64.dmg"
    sha256 "cd6d7e4595a371ab8c3616729b223c5f4b1c53f848625a9dad353242325898e9"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.4/Hexdeck_0.5.4_x64.dmg"
    sha256 "a8832c3b35654b07eaa58848b8334f2d456cce7c655ec778b3e7672a6ab2c8c5"
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
