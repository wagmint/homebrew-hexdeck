cask "hexdeck" do
  version "0.5.21"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.21/Hexdeck_0.5.21_aarch64.dmg"
    sha256 "1ed9aed5b98af68fb6d6ac53775a0d7ce7e504f30ff595f47335b074a7d4ef9f"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.21/Hexdeck_0.5.21_x64.dmg"
    sha256 "33e96fbf120b00a119cc4119afe7dd1eb97229bf6e524eb7f05dbb8d38c4082c"
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
