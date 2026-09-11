cask "docky" do
  version "0.9.4,202609010954"
  sha256 "b90516ad0cb7742103c501b66a4c69197092047877d53710dff4e97a0604543c"

  url "https://github.com/josejuanqm/docky/releases/download/v#{version.csv.first}/Docky-#{version.csv.first}.dmg"
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
