class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.6/skilldo-v0.5.6-darwin-arm64.tar.gz"
      sha256 "00e624cb779e5e1d9a058c5468072a6cf36e560ae3e20a660401cd49c294ddf7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.6/skilldo-v0.5.6-linux-amd64.tar.gz"
      sha256 "03fce275e19189f827ea90b39723b5940ddc55b0a5f9c0706f4373cbded175a0"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.6/skilldo-v0.5.6-linux-arm64.tar.gz"
      sha256 "c6c0b63e6f5962ea17b58f571afd2d269c6ca33a33b2e5e0855a5f528522ebc3"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
