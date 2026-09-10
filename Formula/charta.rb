# Rendered by the release workflow into Pirol-ai/homebrew-tap:Formula/charta.rb
class Charta < Formula
  desc "Reference toolchain for Company as Code"
  homepage "https://github.com/Pirol-ai/company-as-code"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.2.0/charta-aarch64-apple-darwin.tar.gz"
      sha256 "b17d8ada282c243d93149cef494843ddc3241854177a05c1f9fd77b95cf1449e"
    else
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.2.0/charta-x86_64-apple-darwin.tar.gz"
      sha256 "1319475c46ed7a398ed487432be403f374b2db3b5075088334624cf4ae45e7a2"
    end
  end

  on_linux do
    url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.2.0/charta-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9c9c0a73ae32e4235520910caf04e5aaad845a7e6d6ca5a0e459da2d797248a7"
  end

  def install
    bin.install "charta"
  end

  test do
    assert_match "charta", shell_output("#{bin}/charta 2>&1", 2)
  end
end
