# Rendered by the release workflow into Pirol-ai/homebrew-tap:Formula/charta.rb
class Charta < Formula
  desc "Reference toolchain for Company as Code"
  homepage "https://github.com/Pirol-ai/company-as-code"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.1.0/charta-aarch64-apple-darwin.tar.gz"
      sha256 "c4fc274efdae1f647141dab3e92b8bf654016dc7b7f3cf32c6b5e96aa822de26"
    else
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.1.0/charta-x86_64-apple-darwin.tar.gz"
      sha256 "06ad8714498feaa68e082f79ced57c9096cc21417bb1f7436e9f01d193535e43"
    end
  end

  on_linux do
    url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.1.0/charta-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "45a71f83973b5ecf30b4fca5b3e283c88f088a6ac934b88e057fd061a16df696"
  end

  def install
    bin.install "charta"
  end

  test do
    assert_match "charta", shell_output("#{bin}/charta 2>&1", 2)
  end
end
