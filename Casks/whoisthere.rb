cask "whoisthere" do
  version "0.1.0"
  sha256 "7147e47ec544ae0d4efc57b5b658f490e393205972ba55ee42ba429c36388165"

  url "https://github.com/nasanov/whoisthere/releases/download/v#{version}/whoisthere-#{version}.dmg"
  name "whoisthere"
  desc "Menu bar app showing which dev servers are running, with one-click stop"
  homepage "https://github.com/nasanov/whoisthere"

  depends_on macos: :sonoma

  app "whoisthere.app"

  zap trash: [
    "~/Library/Application Support/whoisthere",
    "~/Library/Preferences/com.nasanov.whoisthere.plist",
  ]
end
