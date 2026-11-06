cask "bleunlock" do
  version "1.13.0,796"
  sha256 "3941b84e0de796ebebfacf077359609e277711c0bd5e626cb8988161fc971b20"

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
