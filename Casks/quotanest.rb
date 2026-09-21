cask "quotanest" do
  version "0.1.0"
  sha256 "98e0d7fe69653de9c8f03ef7f0c7874bf9257e3784e07a38f67bd80a7ba97d14"

  url "https://github.com/nBatuhanS/QuotaNest/releases/download/v#{version}/QuotaNest.dmg"
  name "QuotaNest"
  desc "Monitor multiple Codex and Claude accounts"
  homepage "https://github.com/nBatuhanS/QuotaNest"

  depends_on macos: :sonoma

  app "QuotaNest.app"

  zap trash: [
    "~/Library/Application Support/QuotaNest",
    "~/Library/Preferences/com.quotanest.mac.plist",
    "~/Library/Saved Application State/com.quotanest.mac.savedState",
  ]
end
