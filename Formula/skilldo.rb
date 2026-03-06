class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.2.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.2/skilldo-v0.2.2-darwin-arm64.tar.gz"
      sha256 "38bb75973a7a520e61093a8ad5b91fc30797e2ae9bc213523a7dbe7c7c5f7a99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.2/skilldo-v0.2.2-linux-amd64.tar.gz"
      sha256 "104b2c4cf0a41505ea6ebb65b06a7f7f3f984853f58a6925fc8191fbb4031ae6"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.2/skilldo-v0.2.2-linux-arm64.tar.gz"
      sha256 "dda2b0711105b3a4d98eba029c9019df08b984505fcd297d89d5e420f4420aa0"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
