cask "hexdeck" do
  version "0.5.26"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.26/Hexdeck_0.5.26_aarch64.dmg"
    sha256 "0e6431867920711564f72944d6d9575e93815a0e2955794337985ae392f19159"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.26/Hexdeck_0.5.26_x64.dmg"
    sha256 "b6d4fb8c45f670c433b5cdaca3856e4e185e0606cffdfc7d16c8fea30616c04a"
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
