class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.4.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.1/skilldo-v0.4.1-darwin-arm64.tar.gz"
      sha256 "1eb324d0d09d5501dffa99e4b69bde0da1518bd8cbb772738bd4086190a2054d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.1/skilldo-v0.4.1-linux-amd64.tar.gz"
      sha256 "68e24e79c7d37a7c22e147ac86428068f3439715d225e5da1765cb6a5ce8a843"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.4.1/skilldo-v0.4.1-linux-arm64.tar.gz"
      sha256 "57844efa368f2e6ce3ed4c5a4a226adb5a4f1555ab30dfd404aa299c391393e5"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
