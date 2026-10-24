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
  version "0.1.0.892"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.892/optchain-0.1.0.892-aarch64-apple-darwin.tar.gz"
      sha256 "d3ff2e3b09942b0b7deb17cb2187e0f44c474a10420b722cf479c2a023996f5a"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.892/optchain-0.1.0.892-x86_64-apple-darwin.tar.gz"
      sha256 "a19e52c4c470654150c9cd5ec5d8711e86f9ebe52a7865f2e256d1d06ae28b7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.892/optchain-0.1.0.892-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d24232f0988d84043cb83e4749d272381e9e9c9e82cd92d0bee21840d0f24b8"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.892/optchain-0.1.0.892-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff65735454a4479eee8d2c360ffcc01185df492ae78822eecd91efe478ff9da4"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
