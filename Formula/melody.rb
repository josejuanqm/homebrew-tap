class Melody < Formula
  desc "Declarative mobile app framework"
  homepage "https://github.com/josejuanqm/melody"
  url "https://github.com/josejuanqm/melody/releases/download/0.2.0/melody-macos-universal.tar.gz"
  sha256 "61b55ad0fce7d519b763c38b99a4d45ba51afe100e08cdd3b9458ba2c37fb192"
  license "MIT"
  version "0.2.0"

  def install
    bin.install "melody"
    (bin/"Melody_MelodyCLI.bundle").install Dir["Melody_MelodyCLI.bundle/*"]
  end
end
