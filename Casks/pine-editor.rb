cask "pine-editor" do
  version "0.12.7"
  sha256 "3592762973dbfc520d8b21735e429ca45fa42f757c3cd3ededff83ddeeaa7ce8"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine.dmg"
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
