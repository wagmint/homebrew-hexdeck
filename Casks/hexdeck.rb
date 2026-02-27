cask "hexdeck" do
  version "0.5.6"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.6/Hexdeck_0.5.6_aarch64.dmg"
    sha256 "cb1d7e9cba99ee488b2e1d4ccaadbf39cc644ed52abffaa9caed48cbe81ea299"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.6/Hexdeck_0.5.6_x64.dmg"
    sha256 "91053112805d48266d9551df65364e9c5ac693f37ab67426476815749c967c59"
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
