cask "dhbw-next" do
  version "2.0.0"
  sha256 "638b10506dde4eb7aaa1f91140b6be48eb2ede11410938d86169f6fa7f959928"

  url "https://github.com/Joinsider/dhbw/releases/download/v#{version}/dhbw-horb-student-app-#{version}.dmg"
  name "DHBW Next"
  desc "Student application for DHBW Horb"
  homepage "https://github.com/Joinsider/dhbw"

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

