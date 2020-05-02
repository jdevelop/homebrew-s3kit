class S3kit < Formula
  desc "AWS S3 CLI tooklit"
  homepage "https://github.com/jdevelop/s3kit"
  url "https://github.com/jdevelop/s3kit/archive/v1.3.0.tar.gz"
  sha256 "34df26649f2f5d5444581514f72b6ef5149ea9e35f02d53d7263a0d905a69b65"

  depends_on "go" => :build 
  depends_on "upx" => :build 

  bottle do
    cellar :any_skip_relocation
    root_url "https://github.com/jdevelop/s3kit/releases/download/v1.3.0"
    sha256 "8331b4387c58a722f63ed2d3fea51894e04ad69bb124436f6b34a65107d39e40" => :catalina
    sha256 "8331b4387c58a722f63ed2d3fea51894e04ad69bb124436f6b34a65107d39e40" => :mojave
    sha256 "8331b4387c58a722f63ed2d3fea51894e04ad69bb124436f6b34a65107d39e40" => :high_sierra
  end

  def install
    system "go", "build", "-trimpath", "-ldflags", "-s -w"
    system "upx", "-9", "s3kit"
    bin.install "s3kit"
  end
end
