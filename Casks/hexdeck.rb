cask "hexdeck" do
  version "0.8.1"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.1/Hexdeck_0.8.1_aarch64.dmg"
    sha256 "26fe54bc05d9c981d555705c4d9347e335a0a4a94eb220f156cdb0a3468a6b9b"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.8.1/Hexdeck_0.8.1_x64.dmg"
    sha256 "8550de5beaeb43387a1aaecec1cbe08c1578ca0823c96d775fcc6a6281373305"
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
