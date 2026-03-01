class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.6/skilldo-v0.1.6-darwin-arm64.tar.gz"
      sha256 "00cfb7823d9f39abcfe8ca3f9621ce8a62b7893b4acdfa65737ffb6058fa2069"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.6/skilldo-v0.1.6-linux-amd64.tar.gz"
      sha256 "f5e83fef3bf717bec1464530924e1b7b292e5f0fc4e6a6b5b9f68539c890e586"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.6/skilldo-v0.1.6-linux-arm64.tar.gz"
      sha256 "20bc3f6cbc222d048c5e9c1b0caab1dd39cd612553312d5b120437bf5d6f13ae"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
