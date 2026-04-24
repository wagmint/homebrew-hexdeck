cask "hexdeck" do
  version "0.7.7"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.7/Hexdeck_0.7.7_aarch64.dmg"
    sha256 "3cf5af3d67b7bbbac800296b81e5525a83fefdb89fe79cc63996309cbb3eced4"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.7/Hexdeck_0.7.7_x64.dmg"
    sha256 "33f0f7e8e936e1069ab8561330fb41867a1be5f2b01816bdf10dd40755aaee26"
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
