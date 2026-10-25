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
  version "0.1.0.983"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.983/optchain-0.1.0.983-aarch64-apple-darwin.tar.gz"
      sha256 "a0e291ce18cb63e9ad0d4776d58ee933495359a60edcea872dd927874aa4111c"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.983/optchain-0.1.0.983-x86_64-apple-darwin.tar.gz"
      sha256 "2f1fbd093f1556e8fd77a007449dcc0230dc76439c2c23dc003423c83ac7b074"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.983/optchain-0.1.0.983-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a983d4a6edc69d5503a8e637d4e3ce560d2270302f5e07171b59e8fefe2a0378"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.983/optchain-0.1.0.983-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5e8cf843eb6ea7d09dfad06680c553731e764c9ab5710ff765a4d5e01b6ed2c"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
