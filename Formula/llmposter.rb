class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.1/llmposter-v0.4.1-darwin-arm64.tar.gz"
      sha256 "a96f80288ee1454409f9db18dfc518cf5623b49c345af113b811fe980d3a878f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.1/llmposter-v0.4.1-linux-amd64.tar.gz"
      sha256 "37c5d9f1ad04bde57850ad14b05227704231fe454c627062662cbf26042c389a"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.1/llmposter-v0.4.1-linux-arm64.tar.gz"
      sha256 "3e7eba697b525890c001f2af9d741f6e326d48443d312a639f8b21b9c06afd59"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
