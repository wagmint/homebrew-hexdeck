cask "hexdeck" do
  version "0.5.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.0/Hexdeck_0.5.0_aarch64.dmg"
    sha256 "1b1159e7e8a9dd757b7c489e7ab8fea21f0a81fa5bf474f47afff6bd1a1ec4aa"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.0/Hexdeck_0.5.0_x64.dmg"
    sha256 "d01cba720b72773d6a08ac9caca04b067100c77991a941e41c9b625bb4fe0d7a"
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
