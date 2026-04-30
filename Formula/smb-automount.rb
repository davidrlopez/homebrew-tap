class SmbAutomount < Formula
  desc "macOS SMB Auto-Mount (Tailscale/VPN Optimized)"
  homepage "https://github.com/davidrlopez/smb-automount"
  url "https://github.com/davidrlopez/smb-automount/archive/refs/tags/v1.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "Apache-2.0"

  def install
    bin.install "smb-automount"
  end

  test do
    system "#{bin}/smb-automount", "--help"
  end
end
