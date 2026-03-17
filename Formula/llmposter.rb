class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.1/llmposter-v0.3.1-darwin-arm64.tar.gz"
      sha256 "cecd9730afe21bd21592c63fca4e13c52c8f3ac949060b4e6c0993ab1061bda8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.1/llmposter-v0.3.1-linux-amd64.tar.gz"
      sha256 "8a0e7aa66807d7e5b4ee8dddb89d6184aea73382c374ebf6c7a419c33b772af9"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.1/llmposter-v0.3.1-linux-arm64.tar.gz"
      sha256 "2f25bdb9036a8f407be3435f9c5e7ffcc12d1ecf2b620d41ede12c9a3b93e770"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
