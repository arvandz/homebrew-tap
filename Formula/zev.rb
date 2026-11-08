class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.22.0/zev-0.22.0-aarch64-macos.tar.gz"
      sha256 "444ffa23461fe8885fb8184b2e8649bdd7e7dd43ab8795683e1ee2c4d9782203"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.22.0/zev-0.22.0-x86_64-macos.tar.gz"
      sha256 "10ffba130abd06b6990f886ab55f0454620a4ac7afbbe347577ceb31931f6791"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.22.0/zev-0.22.0-aarch64-linux.tar.gz"
      sha256 "a0e2b290379d0d976c103fd4ec607977c691fb21a671787383996bf7c2078571"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.22.0/zev-0.22.0-x86_64-linux.tar.gz"
      sha256 "81148f504c51d7e08dea99e4274bb1e3a645414a9d40f968629cb645e22a651f"
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
