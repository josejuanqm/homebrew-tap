cask "docky" do
  version "0.9.5,202610020901"
  sha256 "e1225468a11fc4f437bbd216d6a69b5b2f74dbd3bb7edaa4b9f89c542966f359"

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
