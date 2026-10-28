cask "docky" do
  version "0.9.7,202610281308"
  sha256 "708808ba2e9af74be5b7d782f0f49b82a0643bf09a4dde4ff2c6556f48349d32"

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
