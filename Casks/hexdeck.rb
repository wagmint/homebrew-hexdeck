cask "hexdeck" do
  version "0.5.31"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.31/Hexdeck_0.5.31_aarch64.dmg"
    sha256 "3caccddedbb25203c302d4f2d70c5c9e0d593ecf3f4c778f3a1e84aa29441f3d"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.31/Hexdeck_0.5.31_x64.dmg"
    sha256 "cfd76caf73878d1f7a7cd3264c42830851b100b54cb14a13d51ac19d461140c7"
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
