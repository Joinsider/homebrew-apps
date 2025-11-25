class SignDhbwNext < Formula
  desc "DHBW signature tool"
  homepage "https://github.com/Joinsider/homebrew-apps"
  url "https://github.com/Joinsider/homebrew-apps/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "683fe54ea50cfc7c1776edb747ef78f9accaf810536329ee252af656cc2adc63"
  license "MIT"

  def install
    bin.install "sign-dhbw-next.sh" => "sign-dhbw-next"
  end
end
