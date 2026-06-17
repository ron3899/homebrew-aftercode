class Aftercode < Formula
  desc "Turn daily AI coding-agent sessions into personalized learning podcasts"
  homepage "https://github.com/ron3899/aftercode"
  url "https://github.com/ron3899/aftercode/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "26d829c8d7eb5dc65144eae72a99277e075ab9fe7f695c27ebe005cc47607bf1"
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
