class LicenseGenerator < Formula
  desc "generate license from command line"
  homepage "https://eliasuran.dev"
  url "https://github.com/eliasuran/license-generator/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6e7c717b3ce9c0e3d5612f5a5f2c716951c7d4a9593536ec79b9a211e7bc67ee"

  depends_on "go" => :build

  def install
    ENV["GO111MODULE"] = "auto"
    system "go", "build", "-o", bin/"license-generator", "-ldflags", "-s -w"
  end
end
