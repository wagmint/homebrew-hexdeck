cask "hexdeck" do
  version "0.5.37"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.37/Hexdeck_0.5.37_aarch64.dmg"
    sha256 "49a4380da554eec2fb3a9466c51396692310eac6dc666926d910793c8927e5ce"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.37/Hexdeck_0.5.37_x64.dmg"
    sha256 "6f4a64453cfe478b44beae8e9e29f9a58311a1eb3fda26825df929e5d0612718"
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
