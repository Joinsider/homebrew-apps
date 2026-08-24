cask "dhbw-next" do
  version "3.0.1"
  sha256 "50adc39c19bdb74135e169166752c3c9443e06eb634634eb6de04292967ee965"

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

