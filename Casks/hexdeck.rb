cask "hexdeck" do
  version "0.5.3"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.3/Hexdeck_0.5.3_aarch64.dmg"
    sha256 "94add3982561891793278a830bde206672ad163034143b1c9d9bf05193f68926"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.3/Hexdeck_0.5.3_x64.dmg"
    sha256 "706f16b0916664d7fc2e8191ad239438f221cbfc18bf5a44e98afec4e19a4d28"
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
