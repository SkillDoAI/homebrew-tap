class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.2.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.0/skilldo-v0.2.0-darwin-arm64.tar.gz"
      sha256 "052ae674a7e4f4ae4aad8bda4735b81b99b278b727f43842ce7ae5d6ade51859"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.0/skilldo-v0.2.0-linux-amd64.tar.gz"
      sha256 "ef1d7d93831a4e0cd3f082fde7f8dc966e399e9e17ff1d0d97401e8049b4ca58"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.2.0/skilldo-v0.2.0-linux-arm64.tar.gz"
      sha256 "7f3d17aa69ce2b474fd2f8fb8df0b654df4d423d9bf7909605469736bccca43f"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
