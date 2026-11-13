class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.23.0/zev-0.23.0-aarch64-macos.tar.gz"
      sha256 "079168e36627bf0aeb782a9818ed1d32046e3483c547a6e91160730997610495"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.23.0/zev-0.23.0-x86_64-macos.tar.gz"
      sha256 "b0dce154f1176964bf42c38c1a030c4a286f70fe19c86096d2188ad83719a22a"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.23.0/zev-0.23.0-aarch64-linux.tar.gz"
      sha256 "64536751791fb26df2f49364826307de457e9b30d14ed3cb0921ac7d9691a671"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.23.0/zev-0.23.0-x86_64-linux.tar.gz"
      sha256 "af387fd83c816e66ce3e7e792a790d1b217c9060148952be01171781a300249e"
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
