class SmbAutomount < Formula
  desc "macOS SMB Auto-Mount (Tailscale/VPN Optimized)"
  homepage "https://github.com/davidrlopez/smb-automount"
  url "https://github.com/davidrlopez/smb-automount/archive/refs/tags/v1.1.tar.gz"
  sha256 "dd397fe9fe4acd488563bca904ca0f05a1c4b5e246f381cfe023a4bdae945b9e"
  license "Apache-2.0"

  def install
    bin.install "smb-automount"
  end

  test do
    system "#{bin}/smb-automount", "--help"
  end
end
