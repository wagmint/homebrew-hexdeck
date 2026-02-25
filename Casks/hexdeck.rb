cask "hexdeck" do
  version "0.4.2"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.2/Hexdeck_0.4.2_aarch64.dmg"
    sha256 "05abd7fb603c4fa7c56d315d8c9fd2dcd16353c3fa04d8aff662f98448b9667e"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.4.2/Hexdeck_0.4.2_x64.dmg"
    sha256 "2d1041a06ece6f205d6567cd10d03183d1940e5ea72a7d0651ed48e3b327d5e0"
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
