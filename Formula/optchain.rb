# The Homebrew formula, as scripts/brew-release.sh fills it in and
# publishes it to the public tap (oceanoverflow/homebrew-tap). The @…@
# fields name the release: its version and, for each platform, the
# binary's download (a release file of the tap) and SHA-256.
#
# The source repository is private; the tap publishes built binaries
# only, so installing needs no credentials and no Rust.
class Optchain < Formula
  desc "Options Meerkat: US option chains, implied volatility, and a terminal dashboard"
  homepage "https://optionsmeerkat.com"
  version "0.1.0.1157"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1157/optchain-0.1.0.1157-aarch64-apple-darwin.tar.gz"
      sha256 "e0a7bc0fd74feab4d2fbb4244794c452b7186467cf159fea8c9118d8f7ae82f1"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1157/optchain-0.1.0.1157-x86_64-apple-darwin.tar.gz"
      sha256 "7db9594ef8764d552363ce3066dcd6ff47b946e2e51b49c3750ff62d4cfd121b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1157/optchain-0.1.0.1157-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40d1813c666357f8c7e03ed46966fb36aad4340b1da3799b957ad654306a6fcd"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1157/optchain-0.1.0.1157-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64e78473a08c5bb24791e1dcd2d3e5723aedf1fd4da6581195c475390f796621"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
