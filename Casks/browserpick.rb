cask "browserpick" do
  version "0.0.7"
  sha256 "6a30dd14adf07432e1854be5c73656d0b1eb1958f372e46a6c3cff52d037a6af"

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
