class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.14"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.14/skilldo-v0.5.14-darwin-arm64.tar.gz"
      sha256 "12bee5cd7f6a0957d0ba3cc8323cb4c6e225df1542856204b73a131ae7bcaee2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.14/skilldo-v0.5.14-linux-amd64.tar.gz"
      sha256 "dab439bee4cf89fa8a0723a660b783774ed19844904ab85acef4c257b82fedb2"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.14/skilldo-v0.5.14-linux-arm64.tar.gz"
      sha256 "3552e66ac9978a7dedd259b4e375cc210d1d2ae48eb3efe5bb3572d9325f2c41"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
