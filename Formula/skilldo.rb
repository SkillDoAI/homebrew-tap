class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.11"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.11/skilldo-v0.5.11-darwin-arm64.tar.gz"
      sha256 "e1c6ccc3ea86fb3867c8ec6643a304c5258b449bae692a12988c1bce6535dcc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.11/skilldo-v0.5.11-linux-amd64.tar.gz"
      sha256 "f6390d248b7567a21a1cbc127f17ce551ec2074d1d9c58c2544fb96973a76e02"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.11/skilldo-v0.5.11-linux-arm64.tar.gz"
      sha256 "90ccf8e4d3626a2f112519ad95044dc63718b2d78bdaa3495d0ee9e92f6e53c7"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
