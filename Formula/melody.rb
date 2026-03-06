class Melody < Formula
  desc "Declarative mobile app framework"
  homepage "https://github.com/josejuanqm/melody"
  url "https://github.com/josejuanqm/melody/releases/download/0.3.0/melody-macos-universal.tar.gz"
  sha256 "b4fcf979beeebed1174f3026e1086b9eb256e7cf1d3aee6bcac923709b070598"
  license "MIT"
  version "0.3.0"

  def install
    bin.install "melody"
    (bin/"Melody_MelodyCLI.bundle").install Dir["Melody_MelodyCLI.bundle/*"]
  end
end
