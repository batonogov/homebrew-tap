cask "pine-editor" do
  version "1.33.4"
  sha256 "206c123ac6fd41d5a587a8d325503ffe0b026065f6f18f35c71671ebf511f00b"

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
