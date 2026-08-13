cask "pine-editor" do
  version "2.3.2"
  sha256 "a7908bbd279a463d2aa6efb6495ed77c3e194d3138303469d1dedd91a2e88ca6"

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
