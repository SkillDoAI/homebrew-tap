class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.4/llmposter-v0.3.4-darwin-arm64.tar.gz"
      sha256 "f11126bbf760b951823872771ef87feb52d2685251d23df14da505a0ab9ed4e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.4/llmposter-v0.3.4-linux-amd64.tar.gz"
      sha256 "3cfac3e848d8f41faea58d5fd214fd9baeaa0fa5e030ebc5e962642ad31ef194"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.4/llmposter-v0.3.4-linux-arm64.tar.gz"
      sha256 "726cfd1607c745056c33adb3d95194f3e41bda2fe064374035169e4b725c946d"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
