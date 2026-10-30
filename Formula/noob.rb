class Noob < Formula
  desc "Beginner-friendly command line: type plain English, learn the real commands"
  homepage "https://github.com/Anand-Shekhawat/noob-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v0.3.0/noob-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6ca3bc72a31d2080720eb334a3a16b0212b650548ef79602fb4362dbb2c1a43"
    end
    on_intel do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v0.3.0/noob-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "ddf2d9372359a073151e07675b3fda082ca5af5d7cac1c3e9a9f377ad1db3c93"
    end
  end

  on_linux do
    url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v0.3.0/noob-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d6066092a0df5ff89568cef14e121f008e2f0b5ed77ec825b8501ae17c5a4357"
  end

  def install
    bin.install "noob"
  end

  test do
    assert_match "Noob 0.3.0", shell_output("#{bin}/noob version")
  end
end
