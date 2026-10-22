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
  version "0.1.0.774"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.774/optchain-0.1.0.774-aarch64-apple-darwin.tar.gz"
      sha256 "f612b48795639513a1de9908ba611377ae3a23dd33e0b91ade46a54545d39f44"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.774/optchain-0.1.0.774-x86_64-apple-darwin.tar.gz"
      sha256 "ac3da68b9211930f2095af2563cc0ee7d5974668b637e2ce4da75616b4d949e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.774/optchain-0.1.0.774-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fb6dad9e1dcc9d280fcc56ae729a04db44741f7615167a21f138fa950b1ab00"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.774/optchain-0.1.0.774-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10ac8ec7931e2583c891a19953485c5aa0ffed7a45dbb22c41e6e5064f1ff8ea"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
