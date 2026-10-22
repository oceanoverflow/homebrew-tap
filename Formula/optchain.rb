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
  version "0.1.0.745"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.745/optchain-0.1.0.745-aarch64-apple-darwin.tar.gz"
      sha256 "a0f61fa0ce857d1207ef3b78a1f8e9da7c28c59aac969821a3699a1fb0932422"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.745/optchain-0.1.0.745-x86_64-apple-darwin.tar.gz"
      sha256 "4e38573bc9b588ab6567a1df72e5a6f0365d6512f566c3504c12f549d3f1ed2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.745/optchain-0.1.0.745-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ded2a6147b5f3f0b27f9ade763810bdbaf3ebb4cf718166091d147f55d6828ed"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.745/optchain-0.1.0.745-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "862b9942ecacbf059fea39d36c3f4f4b40f6bda75a8861f9f4928585800a827e"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
