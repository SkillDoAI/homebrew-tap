class Skilldo < Formula
  desc "Generate SKILL.md rules files from library source code"
  homepage "https://github.com/SkillDoAI/skilldo"
  version "0.1.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.4/skilldo-v0.1.4-darwin-arm64.tar.gz"
      sha256 "bada7b36d3c10a3e60eedde7e5ea56868ed3b783e8607a3ce968c7a657bb4ec1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.4/skilldo-v0.1.4-linux-amd64.tar.gz"
      sha256 "a2eb3e9d8240b33307edccd3f1c02a1bb607d7d7de7649b5869f5f25a8456b73"
    end
    on_arm do
      url "https://github.com/SkillDoAI/skilldo/releases/download/v0.1.4/skilldo-v0.1.4-linux-arm64.tar.gz"
      sha256 "837649457af63605171d4a6149722dd90b8de9df1a116dcc184a7dc6a4b71801"
    end
  end

  def install
    bin.install "skilldo"
  end

  test do
    assert_match "skilldo", shell_output("#{bin}/skilldo --help")
  end
end
