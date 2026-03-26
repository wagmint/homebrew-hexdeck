cask "hexdeck" do
  version "0.5.33"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.33/Hexdeck_0.5.33_aarch64.dmg"
    sha256 "ed608625e4a0c1e0812ca19e1af82bc8ba74917ac3a9d32c2516f701e867ef7f"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.33/Hexdeck_0.5.33_x64.dmg"
    sha256 "469efe23efaa31fa1f8ec9c92e29bd880658dc4e3b8bc51f10cad69e89030c4a"
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
