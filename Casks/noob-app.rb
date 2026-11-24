cask "noob-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.1"
  sha256 arm:   "bb285c8d176fc0af6748d4f61506ab85e41fe2310d3eec839d761e6ad2139cd5",
         intel: "d652ab1f510a66a0bb8f608b2e5265c45a7604743951d4b8a589b5c135a8fd37"

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
