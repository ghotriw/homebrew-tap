cask "kawa-modern" do
  version "2.0.3"
  sha256 "892efbcf1f63ad3651063df8535320c0fac313d5de035a6aebceb82bb74b28e4"

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
