cask "scrub" do
  version "1.0.0"
  sha256 "66a2a54dec7f878a8a17526bfe8e13ef9aab66f031901ed09fb8a8ccf912e5d0"

  url "https://github.com/NuttapongPun/scrub/releases/download/v#{version}/Scrub-v#{version}.zip",
      verified: "github.com/NuttapongPun/scrub/"
  name "Scrub"
  desc "Menu-bar cleaning mode that locks the keyboard/trackpad and dims the screen"
  homepage "https://github.com/NuttapongPun/scrub"

  depends_on macos: :ventura

  app "Scrub.app"

  zap trash: [
    "~/Library/Application Support/Scrub",
    "~/Library/Preferences/com.nuttapongpun.scrub.plist",
  ]

  caveats <<~EOS
    Scrub is not notarized yet. If macOS refuses to open it, either reinstall with
      brew install --cask --no-quarantine NuttapongPun/tap/scrub
    or right-click Scrub.app in /Applications and choose Open once.

    On first launch, grant Scrub Accessibility permission so it can lock input.
  EOS
end
