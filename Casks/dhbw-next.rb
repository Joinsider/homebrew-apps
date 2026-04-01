cask "dhbw-next" do
  version "2.0.3"
  sha256 "6e49322e1163022bcac723595fc8b708ed48622ef8282eeaaebd7c76b12dc027"

  url "https://github.com/Joinsider/dhbw/releases/download/v#{version}/dhbw-horb-student-app-#{version}.dmg"
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

