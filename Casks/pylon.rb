cask "pylon" do
  version "0.1.0"

  on_arm do
    url "https://github.com/wagmint/pylon/releases/download/menubar-v0.1.0/Pylon_0.1.0_aarch64.dmg"
    sha256 "dd8a944cc338f6cd108564015c3d641239cda9d2bed901b79593b2e2d125a2e3"
  end

  on_intel do
    url "https://github.com/wagmint/pylon/releases/download/menubar-v0.1.0/Pylon_0.1.0_x64.dmg"
    sha256 "2415f055750b9b7bc3f34524fc383db7efc4057b8eaa8731707f4c4afca48cca"
  end

  name "Pylon"
  desc "Menu bar monitoring utility"
  homepage "https://github.com/wagmint/pylon"

  app "Pylon.app"

  zap trash: [
    "~/Library/Application Support/dev.pylon.menubar",
    "~/Library/Caches/dev.pylon.menubar",
  ]
end
