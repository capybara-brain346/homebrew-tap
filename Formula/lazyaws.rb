class Lazyaws < Formula
  desc "Lazygit-style terminal interface for AWS"
  homepage "https://lazyaws.xyz"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.1/lazyaws-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "bf09ae7f78478ad79e9693213761a513fbbf982f971b650142bab59c36cc765d"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.1/lazyaws-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "5b639ebef3ee9ec2d3dfe47b2ab14e7d3f36ca0b8cfee59beec9ff0c57692836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.1/lazyaws-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90d4e503a9bebb1e817350c5b6a70b158c147b8d576e501ec3be526ee3aaa7d7"
    end
    on_intel do
      url "https://github.com/capybara-brain346/lazyaws/releases/download/v0.2.1/lazyaws-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26a4de1afe0fef9ca38906d885927964d4f874ea735b41b72e46cbbecdfdb2ed"
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
