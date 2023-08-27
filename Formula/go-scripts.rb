class GoScripts < Formula
  desc "Various Golang scripts"
  homepage "https://github.com/cwimmer/go-scripts"
  url "https://github.com/cwimmer/go-scripts/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "e95f5f28316ff538ba1cba221cebd1438ea55bae10324cc08e031e4b3a2f2b66"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
