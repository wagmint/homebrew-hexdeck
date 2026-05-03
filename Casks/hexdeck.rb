cask "hexdeck" do
  version "0.8.4"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.4/Hexdeck_0.8.4_aarch64.dmg"
    sha256 "0283ee6b4452410f17f8352a0bf9cc57fd9091d6776258990d885896773f5ff0"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.4/Hexdeck_0.8.4_x64.dmg"
    sha256 "59ba17d58789e2208af59cd5c9477831365bf68dfed95489379cc941d6f3edcd"
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
