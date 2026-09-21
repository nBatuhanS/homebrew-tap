cask "quotanest" do
  version "0.1.1"
  sha256 "b21d8d4859c84fecdc733f1df4ebcbb5e6626d7f370adeaa5ba42ab1261dbd7e"

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
