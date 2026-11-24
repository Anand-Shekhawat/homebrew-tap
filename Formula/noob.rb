class Noob < Formula
  desc "Beginner-friendly command line: type plain English, learn the real commands"
  homepage "https://github.com/Anand-Shekhawat/noob-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v1.0.1/noob-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "05b30990ecc9e472ec7f6d6ee9b930438ac9b59e852e7cb8b5af369ba4715795"
    end
    on_intel do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v1.0.1/noob-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "ac7f26701011eacd59e05e52404f9c8f46e2a38d98799e237ee7814f7df70d60"
    end
  end

  on_linux do
    url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v1.0.1/noob-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6427c8f2e1dd3045aeee80c1c1e9186524ce29b596a1eb1e33c216d0e9aa39e"
  end

  def install
    bin.install "noob"
  end

  test do
    assert_match "Noob 1.0.1", shell_output("#{bin}/noob version")
  end
end
