class SmbAutomount < Formula
  desc "macOS SMB Auto-Mount (Tailscale/VPN Optimized)"
  homepage "https://github.com/davidromanlopez/smb-automount"
  url "https://github.com/davidrlopez/smb-automount/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  def install
    bin.install "smb-automount"
  end

  test do
    system "#{bin}/smb-automount", "--help"
  end
end
