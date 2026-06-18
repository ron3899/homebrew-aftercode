class Aftercode < Formula
  desc "Turn daily AI coding-agent sessions into personalized learning podcasts"
  homepage "https://github.com/ron3899/aftercode"
  url "https://github.com/ron3899/aftercode/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "53d814e1f610fe59a32dcbf08b4c47d19b0ea72c9e9ae1af6da7df48b4978f70"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/ron3899/aftercode.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/aftercode-cli")
  end

  test do
    assert_match "aftercode", shell_output("#{bin}/aftercode --help")
  end
end
