# Homebrew tap for Lazy AWS

Lazy AWS provides a terminal interface for AWS services.

Install it with Homebrew:

```sh
brew install capybara-brain346/tap/lazyaws
```

The formula supports macOS Sequoia or newer on Apple Silicon and Intel, plus
Linux on ARM64 and x86_64. AWS CLI v2 is required for AWS service operations.
Demo mode works without AWS CLI or AWS credentials.

See [lazyaws.xyz](https://lazyaws.xyz) for project information and usage.

## Updates

The `update-lazyaws` workflow checks the latest
[lazyaws release](https://github.com/capybara-brain346/lazyaws/releases/latest)
every 30 minutes. When a newer release exists, it checks the release
`SHA256SUMS`, regenerates `Formula/lazyaws.rb` with the generator from that
release tag, commits it, and runs `brew test` and `brew audit --strict` on
macOS and Linux. Run it at once with
`gh workflow run update-lazyaws.yml --repo capybara-brain346/homebrew-tap`.
