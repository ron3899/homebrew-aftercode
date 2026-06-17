class Aftercode < Formula
  desc "Turn daily AI coding-agent sessions into personalized learning podcasts"
  homepage "https://github.com/ron3899/aftercode"
  url "https://github.com/ron3899/aftercode/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "cefbab98f12d38ff9a1989ac1acfbf9380a02a2c818d7b777b6c9039e232c821"
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
