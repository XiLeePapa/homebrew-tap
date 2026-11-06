cask "bleunlock" do
  version "1.12.2,796"
  sha256 "d52c6415a6daf8bf8fa8fc84b86f0a5dd70c0e1c2643933f73175325b0bf05e8"

  url "https://github.com/XiLeePapa/BLEUnlock/releases/download/v#{version.csv.first}-build#{version.csv.second}/BLEUnlock-#{version.csv.first}.zip"
  name "BLEUnlock"
  desc "Lock/unlock Mac using the proximity of a Bluetooth Low Energy device (XiLeePapa fork with device names and distance)"
  homepage "https://github.com/XiLeePapa/BLEUnlock"

  depends_on macos: :monterey

  app "BLEUnlock.app"

  zap trash: [
    "~/Library/Application Scripts/jp.sone.BLEUnlock",
    "~/Library/Caches/jp.sone.BLEUnlock",
    "~/Library/Preferences/jp.sone.BLEUnlock.plist",
  ]
end
