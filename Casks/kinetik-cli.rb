class KinetikCli < Formula
  desc "KinetikCli"
  homepage "https://github.com/xiaoanne/homebrew-d3"
  version "0.13.5"
  if Hardware::CPU.arm?
    url "https://ghcr.io/xiaoanne/homebrew-d3/kinetik-cli:arm"
    sha256 "806bb1c434ac59b1f93e7d5bed1e6eeaf27c8d7ca0f1199da53c26e3f6e588fe"
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
    system "xattr", "-dr", "com.apple.quarantine", "#{bin}/kinetik"
  end

  test do
    system "#{bin}/kinetik", "--version"
  end
end
