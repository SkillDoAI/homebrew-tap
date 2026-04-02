class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.12"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.12/skilldo-v0.5.12-darwin-arm64.tar.gz"
      sha256 "4bc4c519983c44b5ffd5fd996a46098dfc6d218b482620ef2dbd70cf978bc0d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.12/skilldo-v0.5.12-linux-amd64.tar.gz"
      sha256 "357f183d6a0dd76dcbaa5ce3f2166398bfd945e8d1b890c5e49d2ca92e563357"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.12/skilldo-v0.5.12-linux-arm64.tar.gz"
      sha256 "1229b015a7c8762781955ddbc3f6182dde76a089d16e1e1b7db384c1112b4688"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
