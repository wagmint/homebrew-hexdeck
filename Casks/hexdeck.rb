cask "hexdeck" do
  version "0.1.0"

  on_arm do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v#{version}/Hexdeck_#{version}_aarch64.dmg"
    sha256 "dd8a944cc338f6cd108564015c3d641239cda9d2bed901b79593b2e2d125a2e3"
  end

  on_intel do
    url "https://github.com/wagmint/hexdeck/releases/download/menubar-v#{version}/Hexdeck_#{version}_x64.dmg"
    sha256 "2415f055750b9b7bc3f34524fc383db7efc4057b8eaa8731707f4c4afca48cca"
  end

  name "Hexdeck"
  desc "Menu bar monitoring utility"
  homepage "https://github.com/wagmint/hexdeck"

  app "Hexdeck.app"

  zap trash: [
    "~/Library/Application Support/dev.hexdeck.menubar",
    "~/Library/Caches/dev.hexdeck.menubar",
  ]
end
