class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.2/llmposter-v0.3.2-darwin-arm64.tar.gz"
      sha256 "5e7c11368c7a0db349d55a3ba214174d3ba10b0acce020b4e0f486b629baa73f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.2/llmposter-v0.3.2-linux-amd64.tar.gz"
      sha256 "ebaeb671eb74730e7d99b332d4aa5e98a299df6207491a34a538462c2ebdb529"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.2/llmposter-v0.3.2-linux-arm64.tar.gz"
      sha256 "98e61840e312ace22e7e55ca3e1eb40bf59b9636f90b52b3a75c86771d0e64d5"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
