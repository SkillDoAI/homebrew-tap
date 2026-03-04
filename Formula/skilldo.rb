class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.11"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.11/skilldo-v0.1.11-darwin-arm64.tar.gz"
      sha256 "78ca3ad02840389fe2ebf99137079f247249c4dd10d3be01ffd9122718f31eb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.11/skilldo-v0.1.11-linux-amd64.tar.gz"
      sha256 "fe5f6551f44414ce79810f30ad269d6ce6b542245a216bc08facbf1a1ef32c46"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.11/skilldo-v0.1.11-linux-arm64.tar.gz"
      sha256 "a634e9b6b4d48e098c24505a40d5a172dea2d330a39195bbaa330e39717b7d0b"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
