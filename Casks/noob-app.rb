cask "noob-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "3fc75437c6c982ed8be244254c83ed8e8b4e00086d7d99ac7698e1d4b9a3e5a8",
         intel: "0324ce54a50669070c31e71309d6d66ca6e1e7566d844293abc0cfb1686445fe"

  url "https://github.com/Anand-Shekhawat/noob-cli/releases/download/v#{version}/Noob-v#{version}-#{arch}-apple-darwin.zip"
  name "Noob"
  desc "Beginner-friendly command line in its own window"
  homepage "https://github.com/Anand-Shekhawat/noob-cli"

  depends_on macos: :big_sur # macOS 11 or newer

  app "Noob.app"

  caveats <<~EOS
    Noob isn't signed by Apple yet. The first time you open it, macOS may say it
    can't be opened: go to System Settings, then Privacy & Security, and click
    "Open Anyway" next to Noob.
  EOS
end
