class SylenixGuard < Formula
  desc "Deterministic authorization gateway for AI agent MCP tool traffic"
  homepage "https://github.com/ANIMANxd/sylenix-guard"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.1/sylenix-guard_0.1.1_darwin_amd64.tar.gz"
      sha256 "0498ca61d0700fc88a9bc6d2e197240b8ca20ed9139ace9d3e133bc221b0f2de"
    end
    on_arm do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.1/sylenix-guard_0.1.1_darwin_arm64.tar.gz"
      sha256 "37ebd5660916a9aa960ca9b03a1a51a1dbe81248efe8e2a7af885fba0f45221a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.1/sylenix-guard_0.1.1_linux_amd64.tar.gz"
      sha256 "89175347c595104af35cfdb87dbb78ca8f1eebc6e1c37090c8062d7754e79edf"
    end
    on_arm do
      url "https://github.com/ANIMANxd/sylenix-guard/releases/download/v0.1.1/sylenix-guard_0.1.1_linux_arm64.tar.gz"
      sha256 "86b0570789f0b484909d4aaadd3310c3ad13d492953b0b20049b8eaaff215a22"
    end
  end

  def install
    bin.install "sylenix-guard"
  end

  test do
    system "#{bin}/sylenix-guard", "policy", "print-default"
  end
end