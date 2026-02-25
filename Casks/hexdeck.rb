cask "hexdeck" do
  version "0.1.1"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.1.1/Hexdeck_0.1.1_aarch64.dmg"
    sha256 "5e504314331fffd16feec3d7ffa795f073a8dd6b9bdbfa03c4453129b435e09f"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.1.1/Hexdeck_0.1.1_x64.dmg"
    sha256 "83886f0d5e629a54403dd0b26555d18d3821cbdd7dcb77fbc0f4ee765889f84e"
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
