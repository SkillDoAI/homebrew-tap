class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.0/skilldo-v0.5.0-darwin-arm64.tar.gz"
      sha256 "fb4eb88c1f79d5fdb85656e8792e320bb9f14c14f03f5c8ecdebdd695dbdace4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.0/skilldo-v0.5.0-linux-amd64.tar.gz"
      sha256 "a77d5a00b31687d9fbd1d74e6a29b703fd8f8ee5ca7696efade00380d9c75438"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.0/skilldo-v0.5.0-linux-arm64.tar.gz"
      sha256 "753d3c3c6b914c4aace193cd9307eaabca54400af4ea1334d1a405947fc58ab7"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
