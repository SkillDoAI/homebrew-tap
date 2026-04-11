class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.5/llmposter-v0.4.5-darwin-arm64.tar.gz"
      sha256 "1a3e2947565822c730e9efbe22ae551a9efd1e01c3ceb868649690971a7ad3b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.5/llmposter-v0.4.5-linux-amd64.tar.gz"
      sha256 "3bd2ee15558a208cdae2624bcf0f7fb6da0b04415724434f7cc61b0b23493330"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.5/llmposter-v0.4.5-linux-arm64.tar.gz"
      sha256 "8d2d6577e31953a404695da75810e219f9a41f7fa41158a1fdb8947ade539d25"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
