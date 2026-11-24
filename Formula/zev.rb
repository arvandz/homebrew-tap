class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.27.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.27.0/zev-0.27.0-aarch64-macos.tar.gz"
      sha256 "df5b716ce8c2aecf7457daf371841325f04f690c6b8a93cecd01ff81929aadff"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.27.0/zev-0.27.0-x86_64-macos.tar.gz"
      sha256 "66ddfdd298118ae8c8ad21bda407253952151df538bb062f61ff7bd6ac05f352"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.27.0/zev-0.27.0-aarch64-linux.tar.gz"
      sha256 "2d09fca25246f68d4f6ec99aaed03dd50a75dc8a6d4d95719cc07ca974bc944f"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.27.0/zev-0.27.0-x86_64-linux.tar.gz"
      sha256 "3df99887b3ce5b6c09077539f07be2248a1b0ee907f8bcc68ca5aad77f1ecea3"
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
