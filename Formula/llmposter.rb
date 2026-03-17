class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.0/llmposter-v0.3.0-darwin-arm64.tar.gz"
      sha256 "a4bb34f99126d18e131d569bbabfafe4bc3fcaa465d7cbc3b68b02843a7b5a33"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.0/llmposter-v0.3.0-linux-amd64.tar.gz"
      sha256 "9dbbabb19bdca1a6684004ba9705b600f97d3cf934f9aa1adeb63d4757ba3272"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.0/llmposter-v0.3.0-linux-arm64.tar.gz"
      sha256 "7ea6597ad9a8e2d1fb1f0375cf81ec69af3751ebcc808d809761de59524409a0"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
