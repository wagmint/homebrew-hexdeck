cask "hexdeck" do
  version "0.5.25"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.25/Hexdeck_0.5.25_aarch64.dmg"
    sha256 "33bb24dbf8505164ddc8ce5b05619cf75fadd0e3a26b05b94331202b8c1b719b"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.25/Hexdeck_0.5.25_x64.dmg"
    sha256 "afd5a414daa2a60543968186dba62e7fff6fa4f3682132929ae6338a2de20195"
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
