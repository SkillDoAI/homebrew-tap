class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.10"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.10/skilldo-v0.1.10-darwin-arm64.tar.gz"
      sha256 "9f9d5feb6e1c365e354d5de1e80672550c358a22cbda19d5794e0eb92dca07af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.10/skilldo-v0.1.10-linux-amd64.tar.gz"
      sha256 "7958d67427ba8603bcefc8e389b144ba4302ca3cfdb0ed30706bd166c468396b"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.10/skilldo-v0.1.10-linux-arm64.tar.gz"
      sha256 "1b92a18e17e7d7a21298e2d0aa077753bfcff4f20833b3c59c51c5be57773c08"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
