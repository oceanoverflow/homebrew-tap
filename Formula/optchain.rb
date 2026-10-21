# The Homebrew formula, as scripts/brew-release.sh fills it in and
# publishes it to the private tap (oceanoverflow/homebrew-tap). The @…@
# fields name the release: its version, its tag, and the commit it is.
#
# The repository is private, so Homebrew cannot download its release
# files; the source is cloned instead, by git with the installing user's
# own GitHub credentials (`gh auth setup-git`, the macOS keychain, or an
# SSH key through url.<base>.insteadOf), and built on that machine.
class Optchain < Formula
  desc "US option chains, implied volatility, and a terminal dashboard"
  homepage "https://github.com/oceanoverflow/optchain"
  url "https://github.com/oceanoverflow/optchain.git",
      using:    :git,
      tag:      "v0.1.0.705",
      revision: "0d47fae52ebd292b1f715df14029be302591adce"
  version "0.1.0.705"
  head "https://github.com/oceanoverflow/optchain.git", using: :git, branch: "master"

  depends_on "rust" => :build

  def install
    # build.rs names the commit for `optchain --version` and `optchain
    # upgrade`; a release says which, rather than asking git in the
    # build directory. A --HEAD build lets build.rs ask git.
    unless build.head?
      ENV["OPTCHAIN_BUILD_COMMIT"] = "0d47fae52ebd292b1f715df14029be302591adce"
      ENV["OPTCHAIN_BUILD_COMMITTED_AT"] = "1792566524"
    end
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
