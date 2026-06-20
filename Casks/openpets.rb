cask "openpets" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "3cf057f539533da545e8ea425ac883de383d0e6d67d4ac1efd9be72cea0342c2",
         intel: "7d35f4e2d320e2d2191d07dff02ba4d55943cc96d9f793a8005feb3daefcd4a6"

  url "https://github.com/alvinunreal/openpets/releases/download/v#{version}/OpenPets-#{version}-mac-#{arch}.dmg",
      verified: "github.com/alvinunreal/openpets/"
  name "OpenPets"
  desc "Desktop companion platform with animated pets, plugins, and agent integrations"
  homepage "https://openpets.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OpenPets.app"

  zap trash: [
    "~/Library/Application Support/OpenPets",
    "~/Library/Caches/dev.openpets.app",
    "~/Library/Preferences/dev.openpets.app.plist",
    "~/Library/Saved Application State/dev.openpets.app.savedState",
  ]
end
