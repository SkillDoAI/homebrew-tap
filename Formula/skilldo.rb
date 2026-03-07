class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.2.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.4/skilldo-v0.2.4-darwin-arm64.tar.gz"
      sha256 "1e38e2d1fc4cbc416005c4e8aa0af9f8abf2c133b30a6cf42bd6da74e7812688"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.4/skilldo-v0.2.4-linux-amd64.tar.gz"
      sha256 "537a76508231a685f21baec0417128d15331e512c0e630439b9e72c615c9f30e"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.4/skilldo-v0.2.4-linux-arm64.tar.gz"
      sha256 "05926c93a3e39c9c3f14f7524367bb60a9e362c69d3c0f06818485b821f4d6fd"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
