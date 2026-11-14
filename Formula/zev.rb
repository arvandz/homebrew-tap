class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.24.0/zev-0.24.0-aarch64-macos.tar.gz"
      sha256 "536f1700c0c3bffa5db39f0a88de9dd23329036f440964c376612b90df7c5aa9"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.24.0/zev-0.24.0-x86_64-macos.tar.gz"
      sha256 "3eed762b20420d174988645e00bba95edc12e675dd7d855f1ab3c9e59d2a2709"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.24.0/zev-0.24.0-aarch64-linux.tar.gz"
      sha256 "bb3fbb996313e2b2f3e14ef5d9da07e49f241ade1c70345f9daf6b9593f06ac7"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.24.0/zev-0.24.0-x86_64-linux.tar.gz"
      sha256 "4b326c65306199e39a3d3862b37675104a7d7732baa406aa583ab5306c3c1a21"
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
