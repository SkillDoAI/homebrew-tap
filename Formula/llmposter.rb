class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.5.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.5.0/llmposter-v0.5.0-darwin-arm64.tar.gz"
      sha256 "88aae7a31e7ff71ba8681d1046d74bfc91f838d0a1a93d58863275d75c47595b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.5.0/llmposter-v0.5.0-linux-amd64.tar.gz"
      sha256 "a95ecaea6ae290b451d50c14e47ad6538af5df1904cb5f96cc17d04780c3c09a"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.5.0/llmposter-v0.5.0-linux-arm64.tar.gz"
      sha256 "603d9991489768521fee59862fc96533d55b198be7df00e79009a1d876978d16"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
