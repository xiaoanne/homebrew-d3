class a < Formula
  desc "a"
  homepage "https://github.com/section6nz/kinetik-base"
  version "0.13.5"
  if Hardware::CPU.arm?
    url "file:///Users/annewang/Downloads/homebrew-d3/bin/kinetik-main-aarch64-apple-darwin"
    sha256 "8a7a2297d9700747c4d88e2eea9ad349c92ed89aa1c65de27ab088e8d1718650"
  else
    url "file:///Users/annewang/Downloads/homebrew-d3/bin/kinetik-main-x86_64-apple-darwin"
    sha256 "1be3b6d1146641dc024f1d79e1e48eb3995eab300f126fe25f54fe8a5098c06e"
  end
  license "section6nz"
  head "https://github.com/section6nz/kinetik-base.git", branch: "main"

  def install
    if Hardware::CPU.arm?
        bin.install "kinetik-main-aarch64-apple-darwin" => "kinetik"
    else
        bin.install "kinetik-main-x86_64-apple-darwin" => "kinetik"
    end
    chmod 0755, "#{bin}/kinetik"
    system "xattr", "-dr", "com.apple.quarantine", "#{bin}/kinetik"
  end

  test do
    system "#{bin}/kinetik", "--version"
  end
end