class Lazyaws < Formula
  desc "Lazygit-style terminal interface for AWS"
  homepage "https://lazyaws.xyz"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.4/lazyaws-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "a14dafda49ab91e2c6c80abf9cc65adbd135c1d995e255b60792093d5c49f4a9"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.4/lazyaws-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "74beeb507dea705d45c72b45f67134af45aeda31aed02a92c383b61c5d87add2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.4/lazyaws-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9844e051ecb5079f6ba176e0aec2f993b0f0baeaabc27611d11f556579fe97f"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.4/lazyaws-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6290b92bb869dcbaffbbcc807586b9ba380776e609742bfda72deb36819787e7"
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
