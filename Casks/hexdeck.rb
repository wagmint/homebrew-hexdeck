cask "hexdeck" do
  version "0.7.4"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.4/Hexdeck_0.7.4_aarch64.dmg"
    sha256 "5c919811d5e0612c913defa7536f14e5e9f5cafbd66d771c814ba1df57b94a80"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.4/Hexdeck_0.7.4_x64.dmg"
    sha256 "4353a7c65c2ea1f78fcceb2c9e197fccbf5509ca8a59c1b1c586a1747a7eee51"
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
