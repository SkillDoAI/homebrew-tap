class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.9"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.9/skilldo-v0.5.9-darwin-arm64.tar.gz"
      sha256 "dc515a6691f2a84d6c2aae239167bfce9089717339e9fb1dc4c6ccb043bf9d64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.9/skilldo-v0.5.9-linux-amd64.tar.gz"
      sha256 "4d514c4496616fcb86dc27f25188eda68f85b7cd535f3840dd26db68d02bf5e5"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.9/skilldo-v0.5.9-linux-arm64.tar.gz"
      sha256 "122fa35db6320fd0144ab2d480a99e232d5ded5da043ab39a9d90158135407dc"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
