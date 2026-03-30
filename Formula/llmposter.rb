class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.2/llmposter-v0.4.2-darwin-arm64.tar.gz"
      sha256 "ab79e694a00196de799c4605b60435436bf7a2db7b6b1fb5871abcf45aea83d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.2/llmposter-v0.4.2-linux-amd64.tar.gz"
      sha256 "c18aea84af28118f57a85df689806c2b5e081e2bed9bd026a4311affa78648cf"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.2/llmposter-v0.4.2-linux-arm64.tar.gz"
      sha256 "6e00bcf356ec5436c7fd18cb0973d746db124b60e8135f1f49d594ae82b7a488"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
