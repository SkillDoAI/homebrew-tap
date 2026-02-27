class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.3/skilldo-v0.1.3-darwin-arm64.tar.gz"
      sha256 "3bc313aa89c75f625ce92d3a5e7dea7a5ae9add6287ae9a5666a9ff3358d2f13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.3/skilldo-v0.1.3-linux-amd64.tar.gz"
      sha256 "c0c50111900449b8fd7e09a3502ecc52dd580385d1f0b95568bf99fbf5bbb95e"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.3/skilldo-v0.1.3-linux-arm64.tar.gz"
      sha256 "58a48be3e3af348f84d39c8057cf691bb2c4bbb741b02b34312de4d5462e5f08"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
