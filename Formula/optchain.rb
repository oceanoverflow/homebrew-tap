# The Homebrew formula, as scripts/brew-release.sh fills it in and
# publishes it to the public tap (oceanoverflow/homebrew-tap). The @…@
# fields name the release: its version and, for each platform, the
# binary's download (a release file of the tap) and SHA-256.
#
# The source repository is private; the tap publishes built binaries
# only, so installing needs no credentials and no Rust.
class Optchain < Formula
  desc "US option chains, implied volatility, and a terminal dashboard"
  homepage "https://github.com/oceanoverflow/homebrew-tap"
  version "0.1.0.711"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.711/optchain-0.1.0.711-aarch64-apple-darwin.tar.gz"
      sha256 "5c8bd6b65db4926a959989b0273147e755d61b5f72bb63f81462b316bea2ecd4"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.711/optchain-0.1.0.711-x86_64-apple-darwin.tar.gz"
      sha256 "a8d265aa15bf525ec89225b571c6ae5c40a76c39fa665e75deff25f8e3cfbdb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.711/optchain-0.1.0.711-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccb1a8997dd9aa5b684b77345394387865dc4c90b3718c365eaed504d7f966da"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.711/optchain-0.1.0.711-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28af676611b887549c1d9746c66582571dad64a4b979b9ac01a4955d20d47ada"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
