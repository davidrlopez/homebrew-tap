class SmbAutomount < Formula
  desc "macOS SMB Auto-Mount (Tailscale/VPN Optimized)"
  homepage "https://github.com/davidrlopez/smb-automount"
  url "https://github.com/davidrlopez/smb-automount/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "da3d286627a26926e6341191d3a3f1489667ad1332d49de8c39c0d6f7856ba1e"
  license "Apache-2.0"

  def install
    bin.install "smb-automount"
  end

  test do
    system "#{bin}/smb-automount", "--help"
  end
end
