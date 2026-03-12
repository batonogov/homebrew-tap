cask "pine-editor" do
  version "0.10.0"
  sha256 "510699adb66a557905329129fafc6a6e7aa30128fb5cbb04fd4777fee62157c1"

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
