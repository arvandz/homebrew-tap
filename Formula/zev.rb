class Zev < Formula
  desc "Version control for code, models and data, with private team networks"
  homepage "https://zaryn.xyz"
  version "0.20.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.20.1/zev-0.20.1-aarch64-macos.tar.gz"
      sha256 "1376c91a09d2219d70b26eb6670de12952b1f466daeda7f04d8e47189a1008ee"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.20.1/zev-0.20.1-x86_64-macos.tar.gz"
      sha256 "47a00e71776e3e27cb92e492a693ed9a3bf741d127de51252f6e9bd59b2d24f6"
    end
  end
  on_linux do
    on_arm do
      url "https://zaryn.xyz/dl/zev/0.20.1/zev-0.20.1-aarch64-linux.tar.gz"
      sha256 "a797f9b46f3222a4eab0abe24be6a2cbccb6256b5dab50b2b04c7323bbf3eda7"
    end
    on_intel do
      url "https://zaryn.xyz/dl/zev/0.20.1/zev-0.20.1-x86_64-linux.tar.gz"
      sha256 "fd85e3360d241b2faf1dcfbed98db31389d3447d76daddc66989edbe3406938a"
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
