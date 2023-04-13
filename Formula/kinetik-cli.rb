class KinetikCli < Formula
  desc "Kinetik"
  homepage "https://github.com/xiaoanne/homebrew-d3"
  version "0.13.5"
  license "section6nz"
  head "https://github.com/xiaoanne/homebrew-d3", branch: "main"
  if Hardware::CPU.arm?
    url "https://github.com/xiaoanne/homebrew-d3/releases/download/v1.0.5/kinetik-cli--0.13.5.arm64_monterey.bottle.1.tar.gz"
    sha256 "04f71a4e4f736d7247a934740e91a199111c52522ce5c12854e688edfa154296"
  else
    url "https://github.com/xiaoanne/homebrew-d3/releases/download/v1.0.5/kinetik-cli--0.13.5.x86_64_linux.bottle.1.tar.gz"
    sha256 "b8e8078427a79515d33fe5863ea0e8deb915b98d4b3e095f8e228444eb82ba0f"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "0.13.5/bin/kinetik" => "kinetik"
    else
      bin.install "0.13.5/bin/kinetik" => "kinetik"
    end
    chmod 0755, "#{bin}/kinetik"
#     system "xattr", "-dr", "com.apple.quarantine", "#{bin}/kinetik"
  end

  test do
    system "#{bin}/kinetik", "--version"
  end
end
