class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.7/skilldo-v0.1.7-darwin-arm64.tar.gz"
      sha256 "c4ef794101c514b42f3d62e723894c0258f4a78a76930c53c7c78e5fe54c398a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.7/skilldo-v0.1.7-linux-amd64.tar.gz"
      sha256 "7edc59d56f89c54ac023f492c929940ec87723170458e2f5910493c68de0507f"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.7/skilldo-v0.1.7-linux-arm64.tar.gz"
      sha256 "8e35b9558e774878197b3a3a313cd2bfcc6e0eab12c77528eacd1485d74c9fec"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
