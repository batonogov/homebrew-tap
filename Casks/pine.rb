cask "pine" do
  version "0.2.0"
  sha256 "1d340f388f4c5f2437faed0de21984f2455c598e2819f8b8a7b95b391d96519c"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine.dmg"
  name "Pine"
  desc "Minimal native macOS code editor"
  homepage "https://github.com/batonogov/pine"

  depends_on macos: ">= :sequoia"

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
