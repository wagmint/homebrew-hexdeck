cask "hexdeck" do
  version "0.8.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.0/Hexdeck_0.8.0_aarch64.dmg"
    sha256 "16357e97b2ad1aedf6b96eb93fcde1d4cfe12a89a9b5963674a39928a49f3d6a"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.0/Hexdeck_0.8.0_x64.dmg"
    sha256 "4b55a35ec0cf5ff07a03029a756260bf54222af2a5dbb86c545e4938ffdd5b7b"
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
