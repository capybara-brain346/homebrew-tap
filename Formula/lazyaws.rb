class Lazyaws < Formula
  desc "Lazygit-style terminal interface for AWS"
  homepage "https://lazyaws.xyz"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.3/lazyaws-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "72aa3227158e108a042bb1a064b0d0c225748925c01777d2255163ebbc19d44a"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.3/lazyaws-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "48d419fe7a4c52e2bc52a1073864a9d42ca3841aeea2039f0b7e6749af5a7875"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.3/lazyaws-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec54655d1ee32c6cc7c51070c2fff0db99284cfa826c18f9ecdbb4a2cdc7d4b7"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.3/lazyaws-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5581bd1032bce2c67dd6cef7ec3072b7eb4f20e65041e285b656a7e50184e95"
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
