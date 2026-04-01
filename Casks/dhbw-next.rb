cask "dhbw-next" do
  version "2.0.3"
  sha256 "a14b55fba9a2c344fe769f3b65a0178db588804aefcfa48d3b0f7542b0bac24c"

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

