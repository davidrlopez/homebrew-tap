class Jitterbreak < Formula
  desc "macOS awdl0 and llw0 manager"
  homepage "https://github.com/davidrlopez/jitterbreak"
  url "https://github.com/davidrlopez/jitterbreak/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dd38a1c084e746cd22efec26d248ff7e3e5729f7771e2bb7a4d98c392d94458b"
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
