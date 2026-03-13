class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.4.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.0/skilldo-v0.4.0-darwin-arm64.tar.gz"
      sha256 "dd0d1952e07849bb2e700a98acfc2d264168c795d27b668e0793cbd038340fcf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.0/skilldo-v0.4.0-linux-amd64.tar.gz"
      sha256 "fd218f6b5ca7fbaa3546850e6fd9ab40af83ebc3bffa9adc81a46c7913c41dea"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.0/skilldo-v0.4.0-linux-arm64.tar.gz"
      sha256 "ec396a1107e16e39c7390cd81815cdf31e12e294094e8be2f658c85371f780c5"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
