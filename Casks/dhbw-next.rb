cask "dhbw-next" do
  version "1.0.11"
  sha256 "e0204caf2ebd55095546b2d558570a5cf8ea14358d1ec76b8e56c810ecb114de"

  url "https://github.com/Joinsider/dhbw-next/releases/download/v#{version}/dhbw-next-#{version}.dmg"
  name "DHBW Next"
  desc "Student application for DHBW Horb"
  homepage "https://github.com/Joinsider/dhbw-next"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "dhbw-next.app"

  zap trash: [
    "~/Library/Application Support/dhbw-next",
    "~/Library/Preferences/com.dhbw.next.plist",
  ]
end

