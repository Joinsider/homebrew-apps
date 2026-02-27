class SignDhbwNext < Formula
  desc "DHBW signature tool"
  homepage "https://github.com/Joinsider/homebrew-apps"
  url "https://github.com/Joinsider/homebrew-apps/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "3d352214a64f46ade9aa0725044eb71d8514ddb29c778222a37ce330c134f336"
  license "MIT"

  def install
    bin.install "sign-dhbw-next.sh" => "sign-dhbw-next"
  end
end
