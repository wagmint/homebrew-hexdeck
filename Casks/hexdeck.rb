cask "hexdeck" do
  version "0.5.22"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.22/Hexdeck_0.5.22_aarch64.dmg"
    sha256 "b90b9d920e2d56152b92a11c7a115e8bcbc787d8cf1b8eeadfc552597c80fc87"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.5.22/Hexdeck_0.5.22_x64.dmg"
    sha256 "43dd44fcacc5dba43a1dd777bdae3daa9385f9715129e2fb76bee506104943a1"
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
