class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.1/skilldo-v0.5.1-darwin-arm64.tar.gz"
      sha256 "a99a64b4c4e1c1df0f9816b77b850a841e9952116df5be35a916e68facaa10e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.1/skilldo-v0.5.1-linux-amd64.tar.gz"
      sha256 "ff43743c3c601d6466c072fc5048e30dfbcd6835fc837f56727d18eec5041178"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.1/skilldo-v0.5.1-linux-arm64.tar.gz"
      sha256 "cf224710cc128d60de6825cee32f77b092da171b5e03f09c7a40b0f8e36e45ac"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
