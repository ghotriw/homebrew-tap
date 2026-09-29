cask "browserpick" do
  version "0.0.7.1"
  sha256 "52d71b6389967a85aee847885082eadb400a87d3dfa5ff27e160b92fc1c1113c"

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
