class Sav < Formula
  desc "Save states for coding agents (Claude Code, Codex, Kiro)"
  homepage "https://github.com/RoyLeviGit/sav"
  url "https://github.com/RoyLeviGit/sav/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2ab0783069d484ca0adcecf828e283a1eb64bc2873d17762a993b85ae1347acb"
  license "MIT"
  head "https://github.com/RoyLeviGit/sav.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sav --version")
  end
end
