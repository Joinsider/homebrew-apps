cask "dhbw-next" do
  version "3.0.4"
  sha256 "1433aca6d31ded82571631d1d9eedb3ad411a32a8aa6934513b5f3026d5437da"

  url "https://github.com/Joinsider/dhbw/releases/download/v#{version}/dhbw-student-app-v#{version}.dmg"
  name "DHBW Next"
  desc "Student application for DHBW Horb"
  homepage "https://github.com/Joinsider/dhbw"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "dhbw-horb-student-app.app"

  zap trash: [
    "~/Library/Application Support/dhbw-next",
    "~/Library/Preferences/com.dhbw.next.plist",
  ]
end

