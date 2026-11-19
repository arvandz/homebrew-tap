class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.26.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.26.0/zev-0.26.0-aarch64-macos.tar.gz"
      sha256 "58ece6b70567f90176b15e9d9e3f4678b7265f4cd667ed07081fa60dad631eab"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.26.0/zev-0.26.0-x86_64-macos.tar.gz"
      sha256 "b26b51b20c182b196f8122907ea032eb9f7afcb83fa2fa62cdc2eb98a6e06371"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.26.0/zev-0.26.0-aarch64-linux.tar.gz"
      sha256 "de42a75ce3f9cc3125e2545cc6d4db8e4aafb595f319e2bc0080b45969fe827e"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.26.0/zev-0.26.0-x86_64-linux.tar.gz"
      sha256 "c81b6a8486c32c2b74d8723dc8dc30d769f81f58752bd872348079a60095e36b"
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
