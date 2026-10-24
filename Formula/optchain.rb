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
  version "0.1.0.910"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.910/optchain-0.1.0.910-aarch64-apple-darwin.tar.gz"
      sha256 "3019720ef836c94e7361158cbd6a178fc1013317db69dd279a0b85d25ca70aae"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.910/optchain-0.1.0.910-x86_64-apple-darwin.tar.gz"
      sha256 "a231fa09639415f2e9ecb8d71c4751a28594c09657011155d9f7325d19987f90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.910/optchain-0.1.0.910-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95d96135fdc16d36a24e94582faa5c6bd83b0468c7b743f40c880f4982b6f4f4"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.910/optchain-0.1.0.910-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da1f389af3dd9bfba5ebcaae6372d3d8ca1debf21422e1e5ff4ab6847451e15b"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
