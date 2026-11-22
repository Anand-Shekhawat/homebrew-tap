class Noob < Formula
  desc "Beginner-friendly command line: type plain English, learn the real commands"
  homepage "https://github.com/Anand-Shekhawat/noob-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v1.0.0/noob-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "b9917f444bcab5e9c1228fb9733d45b3ab77201e1e5231f4d4476002e117d53d"
    end
    on_intel do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v1.0.0/noob-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "10d764feb63e57c5538273029d388f44d1b72c89d943a70dfd5a289009364b57"
    end
  end

  on_linux do
    url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v1.0.0/noob-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3448dab3862c5fe614f8bf9f8926b6aa8b6b8133c34f7794af0877898406c6ab"
  end

  def install
    bin.install "noob"
  end

  test do
    assert_match "Noob 1.0.0", shell_output("#{bin}/noob version")
  end
end
