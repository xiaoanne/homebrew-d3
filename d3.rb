class D3 < Formula
  desc "d3"
  homepage "https://github.com/terrastruct"
  url "https://github.com/terrastruct/d2/releases/download/v0.3.0/d2-v0.3.0-macos-arm64.tar.gz"
  sha256 "93bcb3a24e4f8d676dcd2d85f8423f9038293a3cb5cabe4d3383086daccf7823"
  license ""

  def install
    bin.install "bin/d2" => "d3"
    system "xattr", "-dr", "com.apple.quarantine", "#{bin}/d3"
  end

  test do
    system "#{bin}/d3", "--version"
  end
end

