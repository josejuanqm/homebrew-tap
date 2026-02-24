class Melody < Formula
  desc "Declarative mobile app framework"
  homepage "https://github.com/josejuanqm/melody"
  url "https://github.com/josejuanqm/melody/releases/download/0.1.0/melody-macos-universal.tar.gz"
  sha256 "c0ef1a8892e52d9b058334e2898d934e4b48eb7b2afcc548db9575c08afb2032"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "melody"
    (bin/"Melody_MelodyCLI.bundle").install Dir["Melody_MelodyCLI.bundle/*"]
  end
end
