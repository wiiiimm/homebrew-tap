require "language/node"

class GhManagerCli < Formula
  desc "Interactive CLI to manage GitHub repositories"
  homepage "https://github.com/wiiiimm/gh-manager-cli"
  url "https://registry.npmjs.org/gh-manager-cli/-/gh-manager-cli-1.35.0.tgz"
  sha256 "3f47f47c823f230d935f9b5c2c4b1fe34cfb07576bc3b0806c8972a45a63a383"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-manager-cli --version")
  end
end
