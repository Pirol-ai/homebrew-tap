# Rendered by the release workflow into Pirol-ai/homebrew-tap:Formula/charta.rb
class Charta < Formula
  desc "Reference toolchain for Company as Code"
  homepage "https://github.com/Pirol-ai/company-as-code"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.4.0/charta-aarch64-apple-darwin.tar.gz"
      sha256 "6e39689c6f1d9a9ac568b3314084412e97cce542f5dd281e9af35bc22c3f665a"
    else
      url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.4.0/charta-x86_64-apple-darwin.tar.gz"
      sha256 "9f30a177b05928d14833fe55606cfdd61084bb622bf727d881ca21b4c53f32fb"
    end
  end

  on_linux do
    url "https://github.com/Pirol-ai/company-as-code/releases/download/v0.4.0/charta-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3e7125f50dcb29653d8f407173e83e0463435f373f1eac37cd9cb7661821637"
  end

  def install
    bin.install "charta"
  end

  test do
    assert_match "charta", shell_output("#{bin}/charta 2>&1", 2)
  end
end
