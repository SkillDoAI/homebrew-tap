class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.3.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.2/skilldo-v0.3.2-darwin-arm64.tar.gz"
      sha256 "e1786e4ad1c06810a2f89b78a468b4b205df0ecc0f50d13dea5cc6087f768b28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.2/skilldo-v0.3.2-linux-amd64.tar.gz"
      sha256 "60388b49c7026fc721813a854eb903df809e70ec2f1e3efc7ec68a7fa90b6fb7"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.3.2/skilldo-v0.3.2-linux-arm64.tar.gz"
      sha256 "20ae248d775dd013a45218f2e6746b1987aadf4d7fd3ddca9a666a1efc274859"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
