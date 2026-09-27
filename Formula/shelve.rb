class Shelve < Formula
  desc "Pretty-print CSV files grouped by a column"
  homepage "https://github.com/matagus/shelve"
  url "https://github.com/matagus/shelve/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "bd72e1a879cfa75f9fcda66d01aa8949db3c7451250d5c434711e0376b224b7f"
  license "MIT"
  head "https://github.com/matagus/shelve.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    (testpath/"test.csv").write <<~CSV
      name,status
      alice,active
      bob,inactive
      carol,active
    CSV

    output = shell_output("#{bin}/shelve -c 2 #{testpath}/test.csv")
    assert_match "active", output
    assert_match "inactive", output
  end
end
