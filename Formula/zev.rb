class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.29.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.29.0/zev-0.29.0-aarch64-macos.tar.gz"
      sha256 "325d7f9d4fc88034e11d22a97f6ecad250ecdb9a1a34e7b1227cbd8e9a27ad80"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.29.0/zev-0.29.0-x86_64-macos.tar.gz"
      sha256 "223635baf8a6c07ffd55b3476cf60efa9424d2f8453f3b2436a9c930ac003868"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.29.0/zev-0.29.0-aarch64-linux.tar.gz"
      sha256 "54d8d311aab3ff41be8dcf3acac75968add23f477e0e1be1936c5f44e6c5c515"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.29.0/zev-0.29.0-x86_64-linux.tar.gz"
      sha256 "2a451bdec34e06c56b8d083c22fcbec111b1fae01b9a585d67b58b88692224af"
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
