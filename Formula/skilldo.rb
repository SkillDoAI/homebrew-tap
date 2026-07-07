class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.18"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.18/skilldo-v0.5.18-darwin-arm64.tar.gz"
      sha256 "91965955428ba9b2bb789df51a34ee42ece50c682977e2a60b0a0a654f10d58e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.18/skilldo-v0.5.18-linux-amd64.tar.gz"
      sha256 "37c2152a202d820d6fcf3ddb13a31fdcb7e14b9e25c9af2a545deb2d4a3779d7"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.18/skilldo-v0.5.18-linux-arm64.tar.gz"
      sha256 "3caeaed405f027f1ecf2329343bf491d22e6148a3e8acca754ff52c4564ae9ea"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
