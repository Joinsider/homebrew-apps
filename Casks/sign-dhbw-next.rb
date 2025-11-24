class SignDhbwNext < Formula
  desc "Homebrew repo for my apps for macos"
  homepage "https://github.com/Joinsider/homebrew-apps"
  url "https://github.com/Joinsider/homebrew-apps/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "822d5c3d51d0b36548c21f553a02655d7b2107795fde9cb5cb5a5e3ca0bb693b"
  license ""

  def install
    
    bin.install "sign-dhbw-next.sh" => "sign-dhbw"

  end
end
