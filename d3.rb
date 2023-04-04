class D3 < Formula
  desc "d3"
  homepage "https://github.com/terrastruct"
   if Hardware::CPU.arm?
    url "https://github.com/terrastruct/d2/releases/download/v0.3.0/d2-v0.3.0-macos-arm64.tar.gz"
    sha256 "8a7a2297d9700747c4d88e2eea9ad349c92ed89aa1c65de27ab088e8d1718650"
  else
    url "https://github.com/section6nz/kinetik-base/releases/download/v0.13.5/kinetik-main-x86_64-apple-darwin"
    sha256 "1be3b6d1146641dc024f1d79e1e48eb3995eab300f126fe25f54fe8a5098c06e"
  end
  license "section6nz"
  head "https://github.com/section6nz/kinetik-base.git", branch: "main"

  def install
    bin.install "bin/d2" => "d3"
    system "xattr", "-dr", "com.apple.quarantine", "#{bin}/d3"
  end

  test do
    system "#{bin}/d3", "--version", "2>&1"
  end
end

