class Kinetik < Formula
  desc "Kinetik"
  homepage "https://github.com/xiaoanne/homebrew-d3"
  version "0.13.5"
  license "section6nz"
  head "https://github.com/xiaoanne/homebrew-d3", branch: "main"
  if Hardware::CPU.arm?
    url "https://github.com/xiaoanne/homebrew-d3/releases/download/v1.0.6/kinetik--0.13.5.arm64_monterey.bottle.tar.gz"
    sha256 "04f71a4e4f736d7247a934740e91a199111c52522ce5c12854e688edfa154296"
  else
    url "https://github.com/xiaoanne/homebrew-d3/releases/download/v1.0.6/kinetik--0.13.5.x86_64_monterey.bottle.tar.gz"
    sha256 "1be3b6d1146641dc024f1d79e1e48eb3995eab300f126fe25f54fe8a5098c06e"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "0.13.5/bin/kinetik" => "kinetik"
    else
      bin.install "0.13.5/bin/kinetik-main-x86_64-apple-darwin" => "kinetik"
    end
    chmod 0755, "#{bin}/kinetik"
    system "xattr", "-dr", "com.apple.quarantine", "#{bin}/kinetik"
  end

  test do
    system "#{bin}/kinetik", "--version"
  end
end
