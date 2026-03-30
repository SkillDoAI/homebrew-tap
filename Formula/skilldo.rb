class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.10"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.10/skilldo-v0.5.10-darwin-arm64.tar.gz"
      sha256 "ced1ae744e609d2d39e08b3a6512fe4f49680aa41fb33b98a7ddbee6481ff2fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.10/skilldo-v0.5.10-linux-amd64.tar.gz"
      sha256 "bb5178df645a548a6bbb7551c8525aa4af6a4b3bcf710d658b32da2f97dde076"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.10/skilldo-v0.5.10-linux-arm64.tar.gz"
      sha256 "10d8ce6cee2ab2be616cdfff0e3e3496f4f0d989f9ac5f6aa365e983ca55f767"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
