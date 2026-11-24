class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.28.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.28.0/zev-0.28.0-aarch64-macos.tar.gz"
      sha256 "7a7fa85909dfd9363474bbf6cc5f74bc81386403f33d547b9cef593ad1df0360"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.28.0/zev-0.28.0-x86_64-macos.tar.gz"
      sha256 "b1190e973867db364fa200241c05563018bbf603f8bf051f13f8faa0e391ffca"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.28.0/zev-0.28.0-aarch64-linux.tar.gz"
      sha256 "2c4762e08e2fa165c439d94d2d6789c052d008c6235c54c527b6a34572077849"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.28.0/zev-0.28.0-x86_64-linux.tar.gz"
      sha256 "079224b0b011856aa9583a9b820a0cbec387d5d6e3beb8a4ba5a8e4bf43b3f8e"
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
