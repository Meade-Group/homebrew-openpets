cask "openpets" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "3c0bd2e07e51b0bc3ecd4e519148b56c7a6dc56a4318a70c74b0e97fb63642a3",
         intel: "b0a5509d1756bd54fff2a81b313d13fe59dc8bf2acb79a3d845d8b69533fe380"

  url "https://github.com/alvinunreal/openpets/releases/download/v#{version}/OpenPets-#{version}-mac-#{arch}.dmg",
      verified: "github.com/alvinunreal/openpets/"
  name "OpenPets"
  desc "Desktop companion platform with animated pets, plugins, and agent integrations"
  homepage "https://openpets.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "OpenPets.app"

  zap trash: [
    "~/Library/Application Support/OpenPets",
    "~/Library/Caches/dev.openpets.app",
    "~/Library/Preferences/dev.openpets.app.plist",
    "~/Library/Saved Application State/dev.openpets.app.savedState",
  ]
end
