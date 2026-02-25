cask "hexdeck" do
  version "0.4.1"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.1/Hexdeck_0.4.1_aarch64.dmg"
    sha256 "d17e8dfa25e17ec1b132c7f0780a42e3ba707950ebf0feb8a170b7d22493079a"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.1/Hexdeck_0.4.1_x64.dmg"
    sha256 "db225c6f2032f56552b08ca4d0c953178024f9c06f8a1421fd13b642c2389906"
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
