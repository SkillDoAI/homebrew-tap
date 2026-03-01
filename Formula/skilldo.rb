class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.5/skilldo-v0.1.5-darwin-arm64.tar.gz"
      sha256 "4f25643a878b4fc863fbe2bfa8d178cbbbee04fc64db1d03f7d17717d1bd4f8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.5/skilldo-v0.1.5-linux-amd64.tar.gz"
      sha256 "c5121ce435abecf28e3ad3d4399488c94f76f9566dfe2bc5a1795eaa01696c31"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.5/skilldo-v0.1.5-linux-arm64.tar.gz"
      sha256 "ae53db10ad4e5df65285deaf6fe6ce9e6b478e59d5badaa57658af54b31112a9"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
