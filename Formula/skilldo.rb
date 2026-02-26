class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.2/skilldo-v0.1.2-darwin-arm64.tar.gz"
      sha256 "512430b8fdd322f9e84c4d1b9477c551690541064e9001b4b22f07c3c61f5bc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.2/skilldo-v0.1.2-linux-amd64.tar.gz"
      sha256 "8c4d18dc235bb2d92d0b2a6e4dbf9c565ad37e393d2e1025a98dd841198fa0e8"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.2/skilldo-v0.1.2-linux-arm64.tar.gz"
      sha256 "88ad0c8eb602f3e9e983f1024a1cccb0f08230bd5aa8aa4bce88b40a95b82ebc"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
