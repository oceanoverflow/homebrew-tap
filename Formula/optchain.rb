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
  version "0.1.0.856"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.856/optchain-0.1.0.856-aarch64-apple-darwin.tar.gz"
      sha256 "73d44fe9054468dab02f3ff183fbee549ce249267847cb69f28f7a06db20a208"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.856/optchain-0.1.0.856-x86_64-apple-darwin.tar.gz"
      sha256 "25b4e8199235c1f433c1f10c36333dcc1127d8449fab3b22651911ba19be944d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.856/optchain-0.1.0.856-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b771c1690f3a66b688320c09991b1bcfec78dc99c2eaf0e68a7cc8dd0f97b28"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.856/optchain-0.1.0.856-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38f3a8d7adcf56750290b228867915c52ca08c70e5b833119a8782ba271adcb2"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
