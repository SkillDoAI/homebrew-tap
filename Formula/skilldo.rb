class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.7/skilldo-v0.5.7-darwin-arm64.tar.gz"
      sha256 "291ee0af38cd0783551a46ea61c3c6c87e658dcc19bec6dec8a760caffee640b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.7/skilldo-v0.5.7-linux-amd64.tar.gz"
      sha256 "e89365b0f6428f719520fd7e7aa8fdec526588fbd4dc421ed56b0aaadc2338e0"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.7/skilldo-v0.5.7-linux-arm64.tar.gz"
      sha256 "add991f8fe0b216f21cc7da401d0c63476fc952ffa91d31f58db471c39c2a6a0"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
