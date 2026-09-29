cask "browserpick" do
  version "0.0.8"
  sha256 "065fc2ef5da537d79a60a761d5b0f1a54eb9ae59947b01115947a449e990a7c9"

  url "https://github.com/ghotriw/browser-pick/releases/download/v#{version}/BrowserPick.zip"
  name "BrowserPick"
  desc "macOS menubar utility to choose browser on link clicks"
  homepage "https://github.com/ghotriw/browser-pick"

  depends_on macos: :sequoia

  app "BrowserPick.app"

  zap trash: [
    "~/Library/Preferences/com.cvladan.BrowserPick.plist",
  ]
end
