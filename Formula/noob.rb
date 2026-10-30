class Noob < Formula
  desc "Beginner-friendly command line: type plain English, learn the real commands"
  homepage "https://github.com/Anand-Shekhawat/noob-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v0.4.0/noob-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ec56c62f91dd2d7c24a4f1629a7ed26bd5d809b84531539bb5bcd6df4705f30"
    end
    on_intel do
      url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v0.4.0/noob-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "acc109fffb5ed90f7d719c50df930b1e92202fba389a26a85af3913ba2addf6a"
    end
  end

  on_linux do
    url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v0.4.0/noob-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1d1995bdfa7487224d0e76ad72239ff66a21536242a50792b687924496dc474a"
  end

  def install
    bin.install "noob"
  end

  test do
    assert_match "Noob 0.4.0", shell_output("#{bin}/noob version")
  end
end
