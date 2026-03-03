cask "hexdeck" do
  version "0.5.13"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.13/Hexdeck_0.5.13_aarch64.dmg"
    sha256 "6cc1f3c4127829cd3280e9a249d3aad28e338ad00fc2f0180e14d8363fee2d4f"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.13/Hexdeck_0.5.13_x64.dmg"
    sha256 "68e1f3dab64aef0d1f74d1c9b9a021b5c3e800d8c8573063e94d7aedc07c197e"
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
