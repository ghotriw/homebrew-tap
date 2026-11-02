cask "nits" do
  version "0.18.2"
  sha256 "7050fbadc85a5c776c73c83ab68fbf12b685e3fae476998e41a6355cfe8481d6"

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
