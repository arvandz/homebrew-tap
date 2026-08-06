class Zev < Formula
  desc "ML-native version control system with IPLD, Blake3, and weight-level model merging"
  homepage "https://github.com/arvandz/zev"
  url "https://github.com/arvandz/zev/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9b8d0ec9969d3e1427ed265b8fe2df1d553709f8637946aea0c3e4ce50f6f785"
  license "MIT"
  head "https://github.com/arvandz/zev.git", branch: "main"

  ZIG_VERSION = "0.17.0-dev.1567+f0354179a"

  on_linux do
    on_intel do
      resource "zig" do
        url "https://ziglang.org/builds/zig-x86_64-linux-#{ZIG_VERSION}.tar.xz"
        sha256 "337b81a6e89e8289d31311fd7cfdd53c8bfcb1b8c4b5cfadf3363eabfb9a6daa"
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
    assert_match "Zev version", shell_output("#{bin}/zev version 2>&1")
  end
end