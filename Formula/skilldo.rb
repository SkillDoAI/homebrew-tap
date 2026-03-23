class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.5.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.5/skilldo-v0.5.5-darwin-arm64.tar.gz"
      sha256 "6bbbdc7cb064ee8d50a335114d53dbdebd06a21568fa0bc858137fc57cd5609a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.5/skilldo-v0.5.5-linux-amd64.tar.gz"
      sha256 "2b973f11c27ee2b16e3d3e4d74578850373582343885ceb6ae7c4d888f12c2e9"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.5.5/skilldo-v0.5.5-linux-arm64.tar.gz"
      sha256 "18cf2b55387b0aad20a8aa5e99bba65c070b71ad564e1288956905fcfea71fce"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
