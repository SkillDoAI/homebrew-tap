class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.2.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.1/skilldo-v0.2.1-darwin-arm64.tar.gz"
      sha256 "8b05652be741f56e7b86553fdfb542699b1e45795576691588055a482043e0ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.1/skilldo-v0.2.1-linux-amd64.tar.gz"
      sha256 "26c8c57d542b0905c6bc564bdaf000826757d8ab42f626b3978a55d3f5b1e4d4"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.1/skilldo-v0.2.1-linux-arm64.tar.gz"
      sha256 "1007eb697f812f23491e3466977f07d283a8c6f29932ddf8398b59a5e6bf1342"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
