class Aftercode < Formula
  desc "Turn daily AI coding-agent sessions into personalized learning podcasts"
  homepage "https://github.com/ron3899/aftercode"
  url "https://github.com/ron3899/aftercode/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "b651d849c78df5fe6b9dbfbd277806cf7cd057a3c71fe00acd660e02f3206356"
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
