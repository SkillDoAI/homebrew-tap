class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.6/llmposter-v0.3.6-darwin-arm64.tar.gz"
      sha256 "6a3263b7375b5af04b7c5e1750ed0043f3d7bf05cd0e3b46abb9d2b20bd80408"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.6/llmposter-v0.3.6-linux-amd64.tar.gz"
      sha256 "e42ec6d4f899a28d25fb5fa32fdfea01fa051507277b9aae06de880abfb94f0b"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.6/llmposter-v0.3.6-linux-arm64.tar.gz"
      sha256 "935ddb7996b38285f71c633dffc687e41b31d349ada19b6f7130907d94202d78"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
