class Istari < Formula
  desc "Summon Your Engineers — Autonomous AI engineering agents orchestrator"
  homepage "https://github.com/rajnishh/istari-releases"
  license "MIT"

  version "0.0.1"

  # Binaries hosted on the PUBLIC releases repo (source code is private)
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rajnishh/istari-releases/releases/download/v#{version}/ist-darwin-arm64.tar.gz"
      sha256 "5db3ed9e5ec2067028ff2d8e343d21d4f337bae38c320e7b5ac14b89ed876fb7"
    else
      url "https://github.com/rajnishh/istari-releases/releases/download/v#{version}/ist-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_X64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rajnishh/istari-releases/releases/download/v#{version}/ist-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    else
      url "https://github.com/rajnishh/istari-releases/releases/download/v#{version}/ist-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    end
  end

  def install
    if Hardware::CPU.arm?
      if OS.mac?
        bin.install "ist-darwin-arm64" => "ist"
      else
        bin.install "ist-linux-arm64" => "ist"
      end
    else
      if OS.mac?
        bin.install "ist-darwin-x64" => "ist"
      else
        bin.install "ist-linux-x64" => "ist"
      end
    end

    bin.install_symlink "ist" => "istari"
  end

  def caveats
    <<~EOS
      🧙 Istari installed! Summon Your Engineers.

      Quick start:
        ist setup              # First-time wizard (2 min)
        ist pick PROJ-1234     # Spawn autonomous agent
        ist status             # Monitor agents

      Dashboard:
        ist dashboard start

      Docs: https://github.com/rajnishh/istari-releases
    EOS
  end

  test do
    system "#{bin}/ist", "--help"
  end
end
