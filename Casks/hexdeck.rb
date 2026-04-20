cask "hexdeck" do
  version "0.7.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.0/Hexdeck_0.7.0_aarch64.dmg"
    sha256 "b4444f7f8e21410ea7edf92d2b111f0d3d06e5ee7bb3407d9c081a12f304b35f"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.7.0/Hexdeck_0.7.0_x64.dmg"
    sha256 "fb8b4c399c2e361df3ea02317eea96d0745cb06ae403bf8ce90a74879316320f"
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
