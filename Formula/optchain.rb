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
  version "0.1.0.1232"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1232/optchain-0.1.0.1232-aarch64-apple-darwin.tar.gz"
      sha256 "36a8db7634f1e294898afb19235df34fcd0a2f06a45e8e6837dd08a4aa9a8463"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1232/optchain-0.1.0.1232-x86_64-apple-darwin.tar.gz"
      sha256 "c3fdec4e0ec43b401311490d78b155d3c51a47ea0e89a593dcd0fdff9507abf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1232/optchain-0.1.0.1232-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1139fad4902e351f54d2479c84c27cb8ef524e18e7e85fc322a697136035e029"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.1232/optchain-0.1.0.1232-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db3e437407348b7114573f64271012fb7dd5eccfd130940070ff1eda93f65413"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
