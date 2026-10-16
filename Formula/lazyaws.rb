class Lazyaws < Formula
  desc "Lazygit-style terminal interface for AWS"
  homepage "https://lazyaws.xyz"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.2/lazyaws-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "a2737d9b8c0e4bde1b0498719e0a243b828532779f0d2fc69334bc1d7e85a94f"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.2/lazyaws-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "fae2606ac2efe64b3947c3372df0e5d95c4fcad5cfc6220fb8a228d514962bf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.2/lazyaws-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2245b69457ba3cf798979b6a2e5123a0dba06741a45f522b016560366849251b"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.2/lazyaws-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fb4b3fc952289f971e74133f517f2d9214be98eb8604c3a8e7f4cb82f28f53f"
    end
  end

  def install
    bin.install "lazyaws"
  end

  def caveats
    <<~EOS
      Normal AWS service use requires AWS CLI v2.
      Demo mode works without AWS CLI or credentials.

      Linux binaries target Ubuntu 24.04 and systems with a compatible libc.
    EOS
  end

  test do
    assert_match "lazyaws #{version}", shell_output("#{bin}/lazyaws --version")
  end
end
