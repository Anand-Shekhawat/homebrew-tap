cask "noob-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "43ee1f5884be398638df36c2381a33bb0c8cb5e2e973053f9f2d4e9bbb1bfff9",
         intel: "316a9dba597bc1a3f52c3e7a6813126f70d418bba77acc42a840b8a114d8c301"

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
