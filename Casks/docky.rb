cask "docky" do
  version "0.9.1,202607100103"
  sha256 "27e0800465ae959d1ca1cbe5d019764c25a766bcfe09bd8cf67ef829bf3669e5"

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
