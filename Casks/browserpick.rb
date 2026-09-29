cask "browserpick" do
  version "0.0.9"
  sha256 "1219b04195b23390b5bab62f74ad4d92a310261eb8afc1496a0fe7c8d651350e"

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
