class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.17"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.17/skilldo-v0.5.17-darwin-arm64.tar.gz"
      sha256 "7782fab7b9817168ae767792e14a97f7966133aa93e3612330fbe72c6fb174dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.17/skilldo-v0.5.17-linux-amd64.tar.gz"
      sha256 "2d1247e858bd2a16dbc36d5fcae15a20f8c6fe636f836c93b97a34d4be834aa3"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.17/skilldo-v0.5.17-linux-arm64.tar.gz"
      sha256 "24e89e90236fe580e4acbd030c3dbed49e10fd093a44d597a7e7d5b0042af9bc"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
