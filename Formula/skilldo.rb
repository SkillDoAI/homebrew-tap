class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.1/skilldo-v0.3.1-darwin-arm64.tar.gz"
      sha256 "f0a4a9a776a7f1ab3dcf0e65f03a31f0359789b62378b051d979b3ccef2179be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.1/skilldo-v0.3.1-linux-amd64.tar.gz"
      sha256 "2a7c5a9b3d7a654a06c40b8b5369e363cb629ebe68c5c82bb752d5febc375650"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.1/skilldo-v0.3.1-linux-arm64.tar.gz"
      sha256 "fbbac36ce2a445ca95fba0e5de3b7ed3ed556d99d1643239e17ccd38874f3d4c"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
