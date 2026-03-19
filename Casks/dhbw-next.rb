cask "dhbw-next" do
  version "2.0.1"
  sha256 "ef4d3f6f494399a67a6471c4ae09551aa480856adb3578af23bf9d5c3dcfb97f"

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

