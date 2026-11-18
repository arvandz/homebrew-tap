class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.25.0/zev-0.25.0-aarch64-macos.tar.gz"
      sha256 "4671a056a8e26f39a38348558eac885d82f5e71fbf0d106daf7d4e4ab75c6602"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.25.0/zev-0.25.0-x86_64-macos.tar.gz"
      sha256 "2382aa6c404cf46ea021cdf8b0604f7afd8c8ac87ce5261717ac0012fd8bef9c"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.25.0/zev-0.25.0-aarch64-linux.tar.gz"
      sha256 "321b089c9107bd59e07c7dd7fd9681fa0e39e93b2511f09c228e03f0aed9e3f5"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.25.0/zev-0.25.0-x86_64-linux.tar.gz"
      sha256 "4d50d646bd84f786fb1bb502049a38cb20242242c7c8d47524476166994ba8ac"
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
