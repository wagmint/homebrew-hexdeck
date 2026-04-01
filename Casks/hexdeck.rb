cask "hexdeck" do
  version "0.6.1"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.6.1/Hexdeck_0.6.1_aarch64.dmg"
    sha256 "814b2f343392ad8cc1c6ef1d84806edbbfa59752c9f7f869ec98dc7be18ac5f6"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.6.1/Hexdeck_0.6.1_x64.dmg"
    sha256 "d1926948d3a7bc6616249e8f728daf8f099c5a7802edc36bb9ae3b86ab329bad"
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
