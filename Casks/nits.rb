cask "nits" do
  version "0.20.6"
  sha256 "69440c9fb518f686f3a5aeb5c5e14e98970986bf89f716bea8b4b4a83ede00a5"

  url "https://github.com/ghotriw/nits/releases/download/v#{version}/Nits-#{version}-macos-arm64.zip"
  name "Nits"
  desc "HDR and Dolby Vision video player"
  homepage "https://github.com/ghotriw/nits"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Nits.app"

  # The app is ad-hoc signed, not notarized: drop the quarantine flag so it opens right away.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Nits.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.ghotriw.nits.plist",
    "~/Library/Saved Application State/com.ghotriw.nits.savedState",
  ]

  caveats <<~EOS
    Nits is ad-hoc signed and not notarized; the installer removed its quarantine flag.
  EOS
end
