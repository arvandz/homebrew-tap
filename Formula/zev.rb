class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.30.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.30.0/zev-0.30.0-aarch64-macos.tar.gz"
      sha256 "ce183dc0dc2aaf7102e23a68121f497f2121b94a09aa276d3c0ad09fffc82838"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.30.0/zev-0.30.0-x86_64-macos.tar.gz"
      sha256 "6f569ffc79c595aede0ef988a6a3d476393f37fac57c7d6c07bc69ea1f158964"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.30.0/zev-0.30.0-aarch64-linux.tar.gz"
      sha256 "195ba1c0589e8e8b5d7af0e85072a420443f19925ec0d782d87ed77c0f655cb5"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.30.0/zev-0.30.0-x86_64-linux.tar.gz"
      sha256 "75bdb95f8a61cc06e2f9c52e1054d1fc584634765b4efa5f35c8b0050485400f"
    end
  end

  def install
    bin.install "zev"
    doc.install Dir["*.md", "*LICENSE*", "NOTICE"]
  end

  test do
    assert_match "zev #{version}", shell_output("#{bin}/zev --version")
  end
end
