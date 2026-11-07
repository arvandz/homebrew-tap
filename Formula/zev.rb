class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.21.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.21.1/zev-0.21.1-aarch64-macos.tar.gz"
      sha256 "c89f7fc205c742fccd43ba38d38a53e39ad6b91f9c7421f26ceb07ee5a7e0984"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.21.1/zev-0.21.1-x86_64-macos.tar.gz"
      sha256 "961916da5d4fa2b1bf68af47a4c9d5c56e00456467053d286af7d5c710a9596b"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.21.1/zev-0.21.1-aarch64-linux.tar.gz"
      sha256 "68152291ce0bfbf4954ba1cbf6cf5ec8d69fdc59e8a9be00346ce3c5ae8f65f4"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.21.1/zev-0.21.1-x86_64-linux.tar.gz"
      sha256 "4173058784ecda496e8b776236685b8b69f41ae0adb735186d0edbbdeb5e2130"
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
