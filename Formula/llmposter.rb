class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.7/llmposter-v0.4.7-darwin-arm64.tar.gz"
      sha256 "12cb735ac8c0a9be09e21fa71b36a7b1325ed35cad00946a3dabb45acf691a59"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.7/llmposter-v0.4.7-linux-amd64.tar.gz"
      sha256 "383ea74f89fc313640ea7a0332ee21dff63f6b4d02b6dd20ecbfec2a140beb52"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.7/llmposter-v0.4.7-linux-arm64.tar.gz"
      sha256 "b7f06a5bd440a5bc3010c6efe638aa9f7d2cab6029c9447e75db51fd6efc084a"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
