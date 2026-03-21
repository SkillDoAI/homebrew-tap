class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.3/skilldo-v0.5.3-darwin-arm64.tar.gz"
      sha256 "8670b4bf39c5e9e66023589108a0e1e1cc3e6ba060e8105319e9a22360bc6071"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.3/skilldo-v0.5.3-linux-amd64.tar.gz"
      sha256 "a3a56faef6fe26c839336dc4723777824e4eceeb4f354ef339cb0bcba8bd5fb8"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.3/skilldo-v0.5.3-linux-arm64.tar.gz"
      sha256 "3f729891b84cb42402fd612a1e053b992ac8e162a0c3cc42f9399d6e18ff594b"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
