cask "pine-editor" do
  version "2.9.2"
  sha256 "32bdd365f831807c214d1bd45b02407f455feac0dfa061a9b071d50390351eb0"

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
