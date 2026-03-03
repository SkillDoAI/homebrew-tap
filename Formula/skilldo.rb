class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.9"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.9/skilldo-v0.1.9-darwin-arm64.tar.gz"
      sha256 "2ec2148a357c663cc8a296137d21414c5a1443e4f75b418151d78c82b39297c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.9/skilldo-v0.1.9-linux-amd64.tar.gz"
      sha256 "46179b0d57d1fbb36918bed2a0d8a15c5766c54ae6349cbee53956b7a963aa26"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.9/skilldo-v0.1.9-linux-arm64.tar.gz"
      sha256 "25f9f14d5082c97a81ec24440997530e608ce3163cf4633e3079385624bd1b10"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
