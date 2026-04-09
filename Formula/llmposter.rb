class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.3/llmposter-v0.4.3-darwin-arm64.tar.gz"
      sha256 "30ee83a73837953e81fd37b27b36597009a7aa6f4782e92843dac6f2d47ff8e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.3/llmposter-v0.4.3-linux-amd64.tar.gz"
      sha256 "21e6c75fa599a8f6a44fed6da28ce992d3d7d51a5376f89720569dcf23dca420"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.3/llmposter-v0.4.3-linux-arm64.tar.gz"
      sha256 "8f061ebac95be00b9f84490d764071235f1cdc3cba4376cc4eb4f5e635f5c131"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
