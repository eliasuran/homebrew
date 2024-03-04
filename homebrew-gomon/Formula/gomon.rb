class Gomon < Formula
  desc "Automatic restarting of go http server when change in file"
  homepage "https://gomon.eliasuran.dev"
  url "https://github.com/eliasuran/gomon/archive/refs/tags/v1.4.tar.gz"
  sha256 "d42f55599d6f73a41a2b8e718f8918f3fcab1c4f874d81873f3f803b045c559a"

  depends_on "go" => :build

  def install
    ENV["GO111MODULE"] = "auto"
    system "go", "build", "-o", bin/"gomon", "-ldflags", "-s -w"
  end
end
