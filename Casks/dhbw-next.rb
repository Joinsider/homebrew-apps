cask "dhbw-next" do
  version "3.0.2"
  sha256 "4dbc29aa9a6e8f4746ab8e73a65dec2db281cadd52164892c705504041336c95"

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

