class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.4.0/zev-0.4.0-aarch64-macos.tar.gz"
      sha256 "3b43953b911752c5fe1ece180bc6fb4f67388b18b872b97d3bf5ca0feeea5b3e"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.4.0/zev-0.4.0-x86_64-macos.tar.gz"
      sha256 "3b5640cd6865e68f49fe6ea13311b02e0188fec687044bd27b9705c434c6c08b"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.4.0/zev-0.4.0-aarch64-linux.tar.gz"
      sha256 "4c41228cdd76f1209d127a5956c5d8fb7d4ad430b58a22924ad8949c8e70a456"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.4.0/zev-0.4.0-x86_64-linux.tar.gz"
      sha256 "a765e53d91f84d1174b4c9a7cdd9f8ceda0c465b6cceb9fb8eb0e3568c220d1b"
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
