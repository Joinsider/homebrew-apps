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

  # Since 3.0.4 the DMG carries the native SwiftUI app (Apple Silicon, macOS 26), not the
  # Compose desktop build that was called dhbw-horb-student-app.app.
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "DHBW-Horb.app"

  # The app is sandboxed, so everything it writes lives in its container. The dhbw-next paths
  # are what the earlier Compose build left behind.
  zap trash: [
    "~/Library/Application Support/dhbw-next",
    "~/Library/Containers/de.fampopprol.dhbw",
    "~/Library/Preferences/com.dhbw.next.plist",
  ]
end
