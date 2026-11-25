cask "fswitcher" do
  version "1.1.1"
  sha256 "67b6dd4046d3c258a7654ba9c34698f28efe6b93234b1b27e13a7b640f54d4b4"

  url "https://fswitcher.app/releases/fswitcher-#{version}.dmg"
  name "FSwitcher"
  desc "Command-Tab replacement for multiple displays, Spaces and full-screen apps"
  homepage "https://fswitcher.app/"

  livecheck do
    url "https://fswitcher.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "FSwitcher.app"

  uninstall quit: "app.fernando.fswitcher"

  zap trash: [
    "~/Library/Caches/app.fernando.fswitcher",
    "~/Library/HTTPStorages/app.fernando.fswitcher",
    "~/Library/Logs/FSwitcher",
    "~/Library/Logs/FSwitcher.log",
    "~/Library/Preferences/app.fernando.fswitcher.plist",
  ]
end
