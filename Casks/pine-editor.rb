cask "pine-editor" do
  version "1.23.2"
  sha256 "b59f789edb4ca7707e2a32afa559c9a9e05e6ef2d7eff1d3a186a56e8e45f287"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine-#{version}.dmg"
  name "Pine"
  desc "A native Mac code editor"
  homepage "https://github.com/batonogov/pine"

  auto_updates true

  depends_on macos: ">= :tahoe"

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
