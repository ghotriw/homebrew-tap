cask "kawa-modern" do
  version "2.0.2"
  sha256 "81ad29b943dd7d809dec8602e0ed945b1f1de784bc1b6bab3a489c3ea805c321"

  url "https://github.com/ghotriw/kawa-modern/releases/download/v#{version}/Kawa-Modern.zip"
  name "Kawa Modern"
  desc "Modern macOS input source switcher with user-defined shortcuts"
  homepage "https://github.com/ghotriw/kawa-modern"

  depends_on macos: :ventura

  app "Kawa Modern.app"

  zap trash: [
    "~/Library/Preferences/com.ghotriw.Kawa.plist",
  ]
end
