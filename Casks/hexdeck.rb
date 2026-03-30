cask "hexdeck" do
  version "0.6.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.6.0/Hexdeck_0.6.0_aarch64.dmg"
    sha256 "f45ec62d938e815b9feef64dab5c1603d4822e41f6eb45513d43360b3b2964a8"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.6.0/Hexdeck_0.6.0_x64.dmg"
    sha256 "db057d71129386eecdde5a2be80d60c1fdd1a9c0a3cb8445ffb308470751ca83"
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
