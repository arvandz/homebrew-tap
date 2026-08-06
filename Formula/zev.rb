class Zev < Formula
  desc "ML-native version control system with IPLD, Blake3, and weight-level model merging"
  homepage "https://github.com/arvandz/zev"
  url "https://github.com/arvandz/zev/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/arvandz/zev.git", branch: "main"

  ZIG_VERSION = "0.17.0-dev.1282+c0f9b51d8"

  on_linux do
    on_intel do
      resource "zig" do
        url "https://ziglang.org/builds/zig-linux-x86_64-#{ZIG_VERSION}.tar.xz"
        sha256 "533a1ca5d6595793725bca7641d9461a0f00dd1732dded3e4281196f5dd21736"
      end
    end
    on_arm do
      odie "zev: ARM64 Linux is not yet supported by this formula. Try 'brew install --HEAD' with a system Zig 0.17.0-dev install."
    end
  end

  on_macos do
    odie "zev: macOS is not yet supported by this formula. Try 'brew install --HEAD' with a system Zig 0.17.0-dev install."
  end

  def install
    resource("zig").stage do
      zig_dir = Pathname.pwd
      cd buildpath do
        system zig_dir/"zig", "build", "-Doptimize=ReleaseSafe"
      end
    end
    bin.install "zig-out/bin/zev"
  end

  test do
    assert_match "Zev version", shell_output("#{bin}/zev version")
  end
end