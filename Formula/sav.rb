class Sav < Formula
  desc "Save states for coding agents (Claude Code, Codex, Kiro)"
  homepage "https://github.com/RoyLeviGit/sav"
  url "https://github.com/RoyLeviGit/sav/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4080aa756f69a97094ccae85964e5a7d6bad117db4e72a3461c613684472b2fb"
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
