cask "pine-editor" do
  version "2.11.0"
  sha256 "10618dcc5e0fa475a0015a94108c6ca00a43b1a39f134c92af29aa2e89509f0a"

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
