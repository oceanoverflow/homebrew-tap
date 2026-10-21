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
  version "0.1.0.717"

  on_macos do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.717/optchain-0.1.0.717-aarch64-apple-darwin.tar.gz"
      sha256 "3482afaefca686b4dbe89162a1fdb2493568fc1383778b429795f245415453cf"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.717/optchain-0.1.0.717-x86_64-apple-darwin.tar.gz"
      sha256 "0958df36d5262c5bde06050b407e2ffaea4e8f7de0011c4f9460c93b759fd402"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.717/optchain-0.1.0.717-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df5dbc74bf0d94c0af9e17a4a23e13cc8cb1ec5d7c601ca9592245fb6341236d"
    end
    on_intel do
      url "https://github.com/oceanoverflow/homebrew-tap/releases/download/v0.1.0.717/optchain-0.1.0.717-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46c0bbbc1b5efed362483fb4888603e1acff45b5c7eed129babacbbe99c86678"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
