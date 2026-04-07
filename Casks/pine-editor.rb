cask "pine-editor" do
  version "1.18.3"
  sha256 "28b4acd7535c636eabfe464850ab9d75feffec15608f3a7eda762845a90de8a2"

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
