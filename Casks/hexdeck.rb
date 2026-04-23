cask "hexdeck" do
  version "0.7.5"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.5/Hexdeck_0.7.5_aarch64.dmg"
    sha256 "a48d4dc38e8bf5e4eddcd6471893b9e0903b21730c6a44a73fdd4f422c754168"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.5/Hexdeck_0.7.5_x64.dmg"
    sha256 "d0eb61560b102feffe7b29d1967faea4112583bf8c9f63b3b01aa7dd92da5808"
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
