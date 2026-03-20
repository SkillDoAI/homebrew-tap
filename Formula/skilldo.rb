class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.2/skilldo-v0.5.2-darwin-arm64.tar.gz"
      sha256 "7077f584af9c121277d9499483ba72f133a6e16217327dd3ac109998d4320ae4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.2/skilldo-v0.5.2-linux-amd64.tar.gz"
      sha256 "550a005e970c480f8bd34f223b63f55f4929a2eae1ae6f4da366c0fb72e112bd"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.2/skilldo-v0.5.2-linux-arm64.tar.gz"
      sha256 "3191e4a3e3b10f7a381e4c6359a5d04efef3a201807518218d36bac10041c376"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
