class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.4/llmposter-v0.4.4-darwin-arm64.tar.gz"
      sha256 "798e0ec7917d1e602916d97e4ce380b95793e479cf2679b1d7213698760d75b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.4/llmposter-v0.4.4-linux-amd64.tar.gz"
      sha256 "b4a9d06aafe607a727394019475b7a95d581171e4b1edea917625e062071c102"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.4/llmposter-v0.4.4-linux-arm64.tar.gz"
      sha256 "d453bc59250e17e6ac12dc5bff9eef645ab3f607fb15c2daf90d03368356673c"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
