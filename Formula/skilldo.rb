class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.8"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.8/skilldo-v0.5.8-darwin-arm64.tar.gz"
      sha256 "0a5aee2b7811a8993807654a18cc3176c4cf4600caba4aa2089ff5a703277043"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.8/skilldo-v0.5.8-linux-amd64.tar.gz"
      sha256 "a6af53392e1c5f64a5a9aca42f521e236557ce1a38ace348b42dba5b54fb0ee9"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.8/skilldo-v0.5.8-linux-arm64.tar.gz"
      sha256 "1cbbb53bea0866a4b9c93de0c50febe2929c63168cb53b4a1ba87464993ceaa0"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
