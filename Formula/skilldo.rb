class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.4.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.2/skilldo-v0.4.2-darwin-arm64.tar.gz"
      sha256 "49b82e0de5f1df8842d6a4dd6336dba2b4cb0351559c86b7842064619c96092f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.2/skilldo-v0.4.2-linux-amd64.tar.gz"
      sha256 "b760f505e0a44ce41f899c5dd66e9f03d4b03f6e636aaff60bb8383b618e3948"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.2/skilldo-v0.4.2-linux-arm64.tar.gz"
      sha256 "db165d15f9f4dc642a0dcfd5121ba1424cbea4c313086f21b71d1d8518e0df7d"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
