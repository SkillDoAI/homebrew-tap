class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.6/llmposter-v0.4.6-darwin-arm64.tar.gz"
      sha256 "207959d552ede1ecdd5a1652b33fc93b6961e20dec7712fae23c504632288453"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.6/llmposter-v0.4.6-linux-amd64.tar.gz"
      sha256 "1933ae71e90b7f29e9ad8ae0f00f2809c73fae7eadc993706e86542659ccc3e9"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.6/llmposter-v0.4.6-linux-arm64.tar.gz"
      sha256 "8c90483b0a54048a5fc3259c9de15b869f7510f310a02548f84a0ceb99426c5c"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
