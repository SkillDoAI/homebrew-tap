class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.0/skilldo-v0.3.0-darwin-arm64.tar.gz"
      sha256 "663161d684280e88a9c5677707966424f60c242c32ac8b260ec354e5379205c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.0/skilldo-v0.3.0-linux-amd64.tar.gz"
      sha256 "989dee9dc94d706e6c241a647e8bf980a10fa5b37b6b7ded2f3190b8ba2af362"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.0/skilldo-v0.3.0-linux-arm64.tar.gz"
      sha256 "2445e6b139708212e64bbd1c522b05bf95964c26492bf3486429f945d1287eaf"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
