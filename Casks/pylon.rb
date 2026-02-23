cask "pylon" do
  version "0.1.0"
  sha256 "e937b8a986b4709cbda3798366a3acf05b7116459deb3e03b9e8334c42584760"

  url "https://github.com/wagmint/pylon/releases/download/v#{version}/Pylon_#{version}_x64.dmg"
  name "Pylon"
  desc "Menu bar app for monitoring AI coding agents"
  homepage "https://github.com/wagmint/pylon"

  app "Pylon.app"

  zap trash: [
    "~/Library/Application Support/dev.pylon.menubar",
    "~/Library/Caches/dev.pylon.menubar",
  ]
end
