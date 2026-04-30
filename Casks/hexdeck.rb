cask "hexdeck" do
  version "0.8.2"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.2/Hexdeck_0.8.2_aarch64.dmg"
    sha256 "a573163a60cc895b64f91730dfb6b12482de9175b88472d0a9c4a221b42e0bd0"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.2/Hexdeck_0.8.2_x64.dmg"
    sha256 "3455eb0943ddcf8db2df4a133944fb84f2b9a2cf78c127156ff007624525d70e"
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
