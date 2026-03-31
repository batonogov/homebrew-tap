cask "pine-editor" do
  version "1.16.1"
  sha256 "5a9f7c46990d4056c4aa9c1fc0bb399230d100c32d78e9d0c2b5b8b65a96c64a"

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
