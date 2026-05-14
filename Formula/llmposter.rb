class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.8"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.8/llmposter-v0.4.8-darwin-arm64.tar.gz"
      sha256 "3299ebffb04d62dc7943cb81cfad582cb3fa7ea6f9e3f610a203b890cca7ec46"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.8/llmposter-v0.4.8-linux-amd64.tar.gz"
      sha256 "00286dc983db662d03fc1e4697280db808be75a3eddd3ec88cbdefa9b9eeb3d9"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.8/llmposter-v0.4.8-linux-arm64.tar.gz"
      sha256 "2e9be690d5c60292fa213a904d058b9bab3f5328a7d55cd015c7b08eb95f3b08"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
