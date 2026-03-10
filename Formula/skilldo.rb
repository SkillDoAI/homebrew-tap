class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.2.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.5/skilldo-v0.2.5-darwin-arm64.tar.gz"
      sha256 "a83f1221a7a1c06639535393ea323cf02aa787b30fe3930f4f5a081b38974da9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.5/skilldo-v0.2.5-linux-amd64.tar.gz"
      sha256 "141b239b97231bf3774a36bb37593287878237a7693315cc4fa969584c68648f"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.5/skilldo-v0.2.5-linux-arm64.tar.gz"
      sha256 "ae6a49f673aff89b3194742f701ad819c094d953880163762f51133156c39e3f"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
