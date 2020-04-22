class S3kit < Formula
  desc "AWS S3 CLI tooklit"
  homepage "https://github.com/jdevelop/s3kit"
  url "https://github.com/jdevelop/s3kit/archive/v1.1.0.tar.gz"
  sha256 "9a3c7355edc253a94ba8ba21b9137388f764ee9dc4f562e294ddc71983d74a91"

  depends_on "go" => :build

  bottle do
    root_url "https://github.com/jdevelop/s3kit/releases/download/v1.1.0"
    cellar :any_skip_relocation
    sha256 "8aa5a2d1039810e1685304e863d1fd9eaedf8553dc5b17c65546e83c4880b33f" => :mojave
  end

  def install
    system "go", "build"
    bin.install "s3kit"
  end
end
