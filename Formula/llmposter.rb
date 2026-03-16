class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.2.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.2.0/llmposter-v0.2.0-darwin-arm64.tar.gz"
      sha256 "a7df66178b49a7705bb1541a87cfddfa320e68fb4ab5aaf76d76b786da71b74c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.2.0/llmposter-v0.2.0-linux-amd64.tar.gz"
      sha256 "da2b81d06c021354ffa60f2d1118e1e9fbeed5277f543a7e42c185d64b4be453"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.2.0/llmposter-v0.2.0-linux-arm64.tar.gz"
      sha256 "9a54a1a9f99c3120d634826f3734df84331a4e11abb3d6a192e4c9ab0fec7744"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
