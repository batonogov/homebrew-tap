cask "pine-editor" do
  version "0.5.0"
  sha256 "8f1aa7234c7f5932b6bead72b0d07435bd11994c79e4ab9fbf72ca2cad08c9e3"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine.dmg"
  name "Pine"
  desc "Minimal native macOS code editor"
  homepage "https://github.com/batonogov/pine"

  depends_on macos: ">= :sequoia"

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
