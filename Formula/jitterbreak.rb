class jitterbreak < Formula
  desc "macOS awdl0 and llw0 manager"
  homepage "https://github.com/davidrlopez/jitterbreak"
  url "https://github.com/davidrlopez/jitterbreak/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

depends_on "go" => :build

  def install
    cd "core" do
      system "go", "build", "-o", "jitterbreak", "main.go"
      bin.install "jitterbreak"
    end
  end

  test do
    system "#{bin}/jitterbreak", "--help"
  end
end
