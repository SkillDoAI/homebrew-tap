class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.15"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.15/skilldo-v0.5.15-darwin-arm64.tar.gz"
      sha256 "69fa4ab5c2509ea366c7cbc73bd60c28c490b8ca9157472ea68480c1901eb6f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.15/skilldo-v0.5.15-linux-amd64.tar.gz"
      sha256 "63299fbcde228fdaa8288140445b9fd0f7cf7a3fe7e361036a4de09c535ce289"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.15/skilldo-v0.5.15-linux-arm64.tar.gz"
      sha256 "3a8e3c0ebae5407892a6095cc0f65da6b741d5913250ed9a4ac515b37abdc7bb"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
