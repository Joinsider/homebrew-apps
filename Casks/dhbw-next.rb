cask "dhbw-next" do
  version "1.0.12"
  sha256 "94fe76db4bbb492a94b937ca1aa391de4be18f3a31584ad212b0e89fc976973f"

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

