cask "fswitcher" do
  version "1.1.0"
  sha256 "6a42523869d7c4105ce4e9934e0972b6d488e82bbf88cea44433082022a1def1"

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
