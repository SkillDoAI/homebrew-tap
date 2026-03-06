class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.2.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.3/skilldo-v0.2.3-darwin-arm64.tar.gz"
      sha256 "05aca64bf2b7f73fef97f76f77dc0c492f71b92b4e9b5f233b17bf40b6bc334d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.3/skilldo-v0.2.3-linux-amd64.tar.gz"
      sha256 "7c36a8b453963d380f62d87c8e92c800b85ef2dcaf9ed95ef3bf09a4aebeec08"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.3/skilldo-v0.2.3-linux-arm64.tar.gz"
      sha256 "9c5033e3783165078ccbbec9319c6c0e5aaef11d89ea108241a7c78208ae1876"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
