class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.21.0/zev-0.21.0-aarch64-macos.tar.gz"
      sha256 "ce6e67d686e2809902d28dde4a0b30dfa46d07e863737e42aabda439752fa04b"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.21.0/zev-0.21.0-x86_64-macos.tar.gz"
      sha256 "a2fd0820557af5774de12ce9b27000d499a6068ab4c6a3222f2a65614268946c"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.21.0/zev-0.21.0-aarch64-linux.tar.gz"
      sha256 "fc2d1dbcf593d2f430ec68b6996a7381ac9e191e3ee144205b119210edefb0a1"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.21.0/zev-0.21.0-x86_64-linux.tar.gz"
      sha256 "984a3dfa8942b615b42e1638dbdc23caf312455a966944263527625e6a8f8192"
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
