# SkillDoAI Homebrew Tap

Homebrew formulae for [SkillDoAI](https://github.com/SkillDoAI) tools.

## Installation

```bash
brew tap SkillDoAI/tap
```

## Available Packages

| Package | Description | Install |
|---------|-------------|---------|
| [llmposter](https://github.com/SkillDoAI/llmposter) | Mock LLM API server — fixture-driven, deterministic responses for testing | `brew install SkillDoAI/tap/llmposter` |
| [skilldo](https://github.com/SkillDoAI/skilldo) | AI-powered SKILL.md generator for software libraries | `brew install SkillDoAI/tap/skilldo` |

## Quick Install (without tapping first)

```bash
# Install directly — no tap needed
brew install SkillDoAI/tap/llmposter
brew install SkillDoAI/tap/skilldo
```

## Updating

```bash
brew update
brew upgrade SkillDoAI/tap/llmposter
brew upgrade SkillDoAI/tap/skilldo
```

## Platform Support

| Platform | Architecture | Status |
|----------|-------------|--------|
| macOS | Apple Silicon (ARM64) | Supported |
| Linux | x86_64 (AMD64) | Supported |
| Linux | ARM64 | Supported |

Intel Mac (x86_64) users can compile from source via `cargo install`.

## License

Each package is licensed under its own terms — see the individual repositories for details.
