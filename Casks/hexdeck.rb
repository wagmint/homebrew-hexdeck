cask "hexdeck" do
  version "0.5.24"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.24/Hexdeck_0.5.24_aarch64.dmg"
    sha256 "653a3fb7342b3e01bb671eaefd6bcee88cd5f7ac435d87d1237d91cdb027fe8b"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.24/Hexdeck_0.5.24_x64.dmg"
    sha256 "8b812818441eb13debeb2175766dd7e2fc1518724ed6978548cb83b64cfc4bf2"
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
