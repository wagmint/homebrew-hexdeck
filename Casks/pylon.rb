cask "pylon" do
  version "0.2.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.2.0/Hexdeck_0.1.0_aarch64.dmg"
    sha256 "935efc482b8ec4eba182a075d00948b502dab75e3d3cf367d7e8001a05761b52"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v0.2.0/Hexdeck_0.1.0_x64.dmg"
    sha256 "937aeb65deacc1bfcf38ad3f445e202d4a97c65ffdce253884cfb33bba0c2c8c"
  end

  name "Pylon"
  desc "Menu bar monitoring utility"
  homepage "https://github.com/wagmint/hexdeck"

  app "Pylon.app"

  zap trash: [
    "~/Library/Application Support/dev.pylon.menubar",
    "~/Library/Caches/dev.pylon.menubar",
  ]
end
