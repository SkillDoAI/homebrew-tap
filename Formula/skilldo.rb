class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.4/skilldo-v0.5.4-darwin-arm64.tar.gz"
      sha256 "acc9826ac7625557e97e84aeaa68b989d55b82e37a2088aeaa98949f4bd7db94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.4/skilldo-v0.5.4-linux-amd64.tar.gz"
      sha256 "0f48246d42a911a40ae876892f20137f2828aed074c6eb5725978670f43fb6fd"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.4/skilldo-v0.5.4-linux-arm64.tar.gz"
      sha256 "4cf16b0124962ce460b5d1ad1626a922bd56593c95fcdfdacfe3810a7ae02b66"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
