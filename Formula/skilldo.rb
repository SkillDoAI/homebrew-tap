class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.16"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.16/skilldo-v0.5.16-darwin-arm64.tar.gz"
      sha256 "6d7599c9cd0936affd758ef3342555109d451293598722cc79498845a8534d26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.16/skilldo-v0.5.16-linux-amd64.tar.gz"
      sha256 "261141f804865fae36b356ef7806a269efd1ee237d1517709ebdcd6e07051143"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.16/skilldo-v0.5.16-linux-arm64.tar.gz"
      sha256 "f4d5c0f666710cbf33e6254fae9559fd3d38238bef2e28b4c097994d394c4319"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
