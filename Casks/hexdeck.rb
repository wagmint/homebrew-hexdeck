cask "hexdeck" do
  version "0.5.15"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.15/Hexdeck_0.5.15_aarch64.dmg"
    sha256 "75e80c52aee041e598d71f12246ab88a15106665c5e6e71164b7442b8e2fa54b"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.15/Hexdeck_0.5.15_x64.dmg"
    sha256 "61a212895f4ef7e3f18105bc2d8f11def0ab584e9b846c2baa3f8a4b78023260"
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
