cask "pine-editor" do
  version "1.17.0"
  sha256 "cf2043cb1241cf3ccf45515c0c596b3728b9bb7aa689f5d5f4134dd3f7ae83d6"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine-#{version}.dmg"
  name "Pine"
  desc "A native Mac code editor"
  homepage "https://github.com/batonogov/pine"

  depends_on macos: ">= :tahoe"

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
