cask "hexdeck" do
  version "0.5.19"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.19/Hexdeck_0.5.19_aarch64.dmg"
    sha256 "434b27127afeff463ec9f2b62e575e4c30aa0198088a1f2c317315fd446f7629"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.19/Hexdeck_0.5.19_x64.dmg"
    sha256 "7fa7a074044ee66db65c2a9ab996c3ad3eeaf2a956ee900fc8fc0f5f19a8ec3c"
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
