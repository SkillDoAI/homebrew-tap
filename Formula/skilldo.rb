class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.8"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.8/skilldo-v0.1.8-darwin-arm64.tar.gz"
      sha256 "b0f533f7c167c2fe4a06d6e1d95a6164fbef63b7355c40f133e735d5038d9846"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.8/skilldo-v0.1.8-linux-amd64.tar.gz"
      sha256 "8aff7231d40ab4b6154b26a2ae9211c950f884beef1095ad178c4a989b5414e1"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.8/skilldo-v0.1.8-linux-arm64.tar.gz"
      sha256 "5127235bd525245aaff702b00833af9663cd91099d8c220178f30ad602aebdb9"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
