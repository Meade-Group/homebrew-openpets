cask "openpets" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "0acacaa1d47afe22631f7cb5118d7b3e58ca9923380a17f24706f61981dd054e",
         intel: "5986876d274106ee6814e46f81a427d96d313ce1b8e3a23520bee6dacdce87bb"

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
