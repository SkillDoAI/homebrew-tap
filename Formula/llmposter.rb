class Llmposter < Formula
  desc "Mock LLM API server — fixture-driven, deterministic responses for testing"
  homepage "https://github.com/SkillDoAI/llmposter"
  version "0.4.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.0/llmposter-v0.4.0-darwin-arm64.tar.gz"
      sha256 "b596a601cbc4e25126b250fb2e1db45d5079631312179af8ad6444298ec2f1fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.0/llmposter-v0.4.0-linux-amd64.tar.gz"
      sha256 "ce238391c7e45b4834f6cad70dc8ea3b282729d2c87feb2cd100c36bb334c259"
    end
    on_arm do
      url "https://github.com/SkillDoAI/llmposter/releases/download/v0.4.0/llmposter-v0.4.0-linux-arm64.tar.gz"
      sha256 "b66dfe064ae7d5ac67bc1286105a28a80baebc4b78f142e6ed71fb0179539678"
    end
  end

  def install
    bin.install "llmposter"
  end

  test do
    assert_match "llmposter", shell_output("\#{bin}/llmposter --help")
  end
end
