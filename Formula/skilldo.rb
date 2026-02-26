class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.1/skilldo-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "f5fc28493c5b2926159eb1b444eb09b0f5fd6cc8a5d530c467b34f82cc75635d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.1/skilldo-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3e6ca6c56c85fa59dfea94ff63af4394fe0c5deb877e14e4d8d525222f3800a"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.1/skilldo-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cee1825ed710a220d195a48f517f8f4f1f93935cf4c98ad0294edff6514cf13b"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
