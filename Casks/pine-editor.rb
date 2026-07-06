cask "pine-editor" do
  version "1.32.1"
  sha256 "53d080ca7bdcd2fb039ad6e45237bc843c007655325038f6b3adbb90042191e7"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine-#{version}.dmg"
  name "Pine"
  desc "A native Mac code editor"
  homepage "https://github.com/batonogov/pine"

  auto_updates true

  depends_on macos: :tahoe
  depends_on maximum_macos: :golden_gate

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
