cask "dhbw-next" do
  version "1.0.13"
  sha256 "523469d7239ebe1be6e89ab35e1bcec44c52eabed3d6418773a3b0e4db6ed560"

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

