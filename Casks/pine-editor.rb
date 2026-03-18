cask "pine-editor" do
  version "1.2.1"
  sha256 "816ceb19f667cbe0cc863a4b8fa89a5b48ec07fbd18634bdfbaa20aa19428ea2"

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
