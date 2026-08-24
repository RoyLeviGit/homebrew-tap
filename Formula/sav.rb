class Sav < Formula
  desc "Save states for coding agents (Claude Code, Codex, Kiro)"
  homepage "https://github.com/RoyLeviGit/sav"
  url "https://github.com/RoyLeviGit/sav/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1dac562d96b7af12366c40858729c59fdec88c78e0e4766b602c23cf2fc4a773"
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
