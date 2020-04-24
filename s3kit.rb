class S3kit < Formula
  desc "AWS S3 CLI tooklit"
  homepage "https://github.com/jdevelop/s3kit"
  url "https://github.com/jdevelop/s3kit/archive/v1.2.0.tar.gz"
  sha256 "75aaf5657c7b49ae5c5496f0230465c69704c6c51ea4d1c5e4fe5ccf1f86e925"

  depends_on "go" => :build 
  depends_on "upx" => :build 

  bottle do
    cellar :any_skip_relocation
    root_url "https://github.com/jdevelop/s3kit/releases/download/v1.2.0"
    sha256 "7b6467998341f13a399efefd258313e37e70b67e0f4a9fc573ac2f8ccdacfc72" => :mojave
    sha256 "7b6467998341f13a399efefd258313e37e70b67e0f4a9fc573ac2f8ccdacfc72" => :high_sierra
    sha256 "7b6467998341f13a399efefd258313e37e70b67e0f4a9fc573ac2f8ccdacfc72" => :catalina
  end

  def install
    system "go", "build","-ldflags", "-s -w", "-trimpath"
    system "upx", "-9", "s3kit"
    bin.install "s3kit"
  end
end
