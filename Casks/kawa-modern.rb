cask "kawa-modern" do
  version "2.0.1"
  sha256 "75822f7bc56c9fb5d099debbb36d2771356c664c1d9cc606e55276c52de34abc"

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
