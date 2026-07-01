cask "docky" do
  version "0.8.0,202607011115"
  sha256 "bd75638003ec505f7ab3b3436ab534088653c0514f376e8b8b393d814d6d5816"

  url "https://github.com/josejuanqm/docky/releases/download/v#{version.csv.first}/Docky-#{version.csv.first}.dmg",
      verified: "github.com/josejuanqm/docky/"
  name "Docky"
  desc "Configurable Dock replacement with widgets, Launchpad and a window switcher"
  homepage "https://getdocky.com/"

  livecheck do
    url "https://getdocky.com/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Docky.app"

  zap trash: [
    "~/Library/Application Support/Docky",
    "~/Library/Caches/gt.quintero.Docky",
    "~/Library/HTTPStorages/gt.quintero.Docky",
    "~/Library/Preferences/gt.quintero.Docky.plist",
  ]
end
