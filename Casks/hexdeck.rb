cask "hexdeck" do
  version "0.2.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.2.0/Hexdeck_0.1.0_aarch64.dmg"
    sha256 "398cea33efab2adf61df59f3761b6ff21cd5949cfabe7731ccf12731b34a3522"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.2.0/Hexdeck_0.1.0_x64.dmg"
    sha256 "13e9ae90ba2febe14acf592ee79fc69397df743915c5e1309739f6831953d398"
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
