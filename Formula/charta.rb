# Rendered by the release workflow into Pirol-ai/homebrew-tap:Formula/charta.rb
class Charta < Formula
  desc "Reference toolchain for Company as Code"
  homepage "https://github.com/Pirol-ai/company-as-code"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.3.0/charta-aarch64-apple-darwin.tar.gz"
      sha256 "6ee1594a72d4f5df9aa9d5c287eb3d824dab5fc5d8791a04c6332df8be78f4e5"
    else
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.3.0/charta-x86_64-apple-darwin.tar.gz"
      sha256 "fbe1d1f9f7c2b1dbcaf7e3e28241fa37843517c2070796b8dcbf57359ff93bd4"
    end
  end

  on_linux do
    url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.3.0/charta-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2b7dd7e6d3b585e0c228dfcab9f980b47fda2c43e1a9ae87e607f764c3e52bdc"
  end

  def install
    bin.install "charta"
  end

  test do
    assert_match "charta", shell_output("#{bin}/charta 2>&1", 2)
  end
end
