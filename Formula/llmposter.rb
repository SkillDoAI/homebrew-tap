class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.3.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.5/llmposter-v0.3.5-darwin-arm64.tar.gz"
      sha256 "4818b832b042ce306196595066e6533a994d7ad903cc9308c237e8bc789286d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.5/llmposter-v0.3.5-linux-amd64.tar.gz"
      sha256 "39b1436f02d74ffa28348f700bde26f60686e5cddad6829213080399b089ec7e"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.3.5/llmposter-v0.3.5-linux-arm64.tar.gz"
      sha256 "b31a544a41310228cc9fde5a77fd8e461d57b7fdf1ce2e911d9ec4b36bd48a6d"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
