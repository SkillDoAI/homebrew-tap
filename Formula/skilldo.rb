class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.13"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.13/skilldo-v0.5.13-darwin-arm64.tar.gz"
      sha256 "4e614241efaf8fdfb5caf64be294949045224a8968fa6e36b78acd1becc9e5b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.13/skilldo-v0.5.13-linux-amd64.tar.gz"
      sha256 "88f986adc1f32fa3c24887a74f6de17981e9a92acce766c8c96d2c3957398cdd"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.13/skilldo-v0.5.13-linux-arm64.tar.gz"
      sha256 "7a979b517e5c172dfdd7ffbd7a75f202565efae4a575008730faa63a07bc92b1"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
