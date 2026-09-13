cask "kawa-modern" do
  version "2.0.2"
  sha256 "bacfbe2787d59649f24be25ebdeb26d81ff7d8de9bc9aefaeee9d1d6fe7fcd5f"

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
