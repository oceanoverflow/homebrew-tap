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
  version "0.1.0.1154"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1154/optchain-0.1.0.1154-aarch64-apple-darwin.tar.gz"
      sha256 "3c342458309e9633f53575f292051f295bfd9d1f2e6506b2b19a3b829046abe5"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1154/optchain-0.1.0.1154-x86_64-apple-darwin.tar.gz"
      sha256 "bb78361d55c97c2217cd28505f50b4ee89436aefac930a6b811dbd4d919d0b67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1154/optchain-0.1.0.1154-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a736a5914dcf7fa89a5ed909c8b2d37d1b5c7d63fe2f1d9899e248adaf243a9"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1154/optchain-0.1.0.1154-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53d606f1e26a5e82d04366c6a5e598ce3468f0b35df4b654b4f9db9e771c1901"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
