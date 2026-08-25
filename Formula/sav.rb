class Sav < Formula
  desc "Save states for coding agents (Claude Code, Codex, Kiro)"
  homepage "https://github.com/RoyLeviGit/sav"
  version "0.1.1"
  license "MIT"

  # Prebuilt binaries from the tagged GitHub release — installing sav should
  # not pull in a compiler toolchain. Build from source instead with:
  #   cargo install --git https://github.com/RoyLeviGit/sav
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RoyLeviGit/sav/releases/download/v0.1.1/sav-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b6ab4efcb52382c4840fa580164fd9659621cffea326810800791b917d91047a"
    else
      url "https://github.com/RoyLeviGit/sav/releases/download/v0.1.1/sav-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "ea23f660d9fd4f043e5f55e0a42cf306da00593c14e93cbcbfa71c8c11769566"
    end
  end

  on_linux do
    url "https://github.com/RoyLeviGit/sav/releases/download/v0.1.1/sav-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a58e3d465344a1c23a9ffc729c4b18212fb096eb039fbc4b25919204b4e3fc65"
  end

  def install
    bin.install "sav"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sav --version")
  end
end
