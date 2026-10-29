class Kello < Formula
  desc "Simple C hello program"
  homepage "https://github.com/kasie-zhang/kello"
  url "https://github.com/kasie-zhang/kello/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e052c04212e478eec6ae2b348199d929d115895651219ec0d9ca3392a0d2d6f6"
  license "MIT"

  def install
    # Use Homebrew's compiler wrapper to build the binary
    system ENV.cc, "main.c", "-o", "kello"
    
    # Install the compiled binary into bin/ so Homebrew can symlink it
    bin.install "kello"
  end

  test do
    # Verify that the installed binary runs and outputs "hello"
    assert_match "hello", shell_output("#{bin}/kello")
  end
end
