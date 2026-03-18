class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.3/llmposter-v0.3.3-darwin-arm64.tar.gz"
      sha256 "9dfa92884bee59f1f60a1dccfc81a3ef71f669309531f73013b7be50a5285aa2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.3/llmposter-v0.3.3-linux-amd64.tar.gz"
      sha256 "62b7e7c993c420501e90b7726ab4bfaf8bea4b744eac9abf2a1eefe317a07b6b"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.3/llmposter-v0.3.3-linux-arm64.tar.gz"
      sha256 "75c42b32d78d254cfcd17c39d3c95540e3c23ec15a44a65bd3a161c7bbbd0d1d"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
