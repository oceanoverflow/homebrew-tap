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
  version "0.1.0.918"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.918/optchain-0.1.0.918-aarch64-apple-darwin.tar.gz"
      sha256 "955da9d055591add2467892f49e8a21aa641b154b8009e03cd9868b346667e8f"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.918/optchain-0.1.0.918-x86_64-apple-darwin.tar.gz"
      sha256 "6abee6b483c33f76c5465afd659e183e23dc12a740125032e6e7feb27f0bd1d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.918/optchain-0.1.0.918-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fbc458b8d6eea47de81aad2af841ea22cf7e21a28673345a873a2514ce863034"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.918/optchain-0.1.0.918-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef90ee862dfbb50fc4dcb8d576e731144dbb0cb9509a605ec2804d122eab5525"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
