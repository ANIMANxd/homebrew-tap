class SylenixGuard < Formula
  desc "Deterministic authorization gateway for AI agent MCP tool traffic"
  homepage "https://github.com/ANIMANxd/sylenix-guard"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.0/sylenix-guard_0.1.0_darwin_amd64.tar.gz"
      sha256 "<sha256:3239a24bca7ac8bc6d0ecdb12bbc6ade1a22e05368d4be48900a79060966abdf>"
    end
    on_arm do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.0/sylenix-guard_0.1.0_darwin_arm64.tar.gz"
      sha256 "<sha256:6bfcc0888f5df7a531c5da114f1070b7f0c0a785f702f3a7699b19a376b1385d>"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.0/sylenix-guard_0.1.0_linux_amd64.tar.gz"
      sha256 "<sha256:1298e58e3f6ea6ef7655f611f9c24bf815c83c3028e2dc1d34ad8f5c6312f991>"
    end
    on_arm do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.0/sylenix-guard_0.1.0_linux_arm64.tar.gz"
      sha256 "<sha256:39800c9d288579f941bd6afdcf0e9ba8de306a171f4e27a28b3b7534f9ee30d3>"
    end
  end

  def install
    bin.install "sylenix-guard"
  end

  test do
    system "#{bin}/sylenix-guard", "policy", "print-default"
  end
end