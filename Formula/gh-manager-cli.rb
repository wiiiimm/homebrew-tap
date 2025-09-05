require "language/node"

class GhManagerCli < Formula
  desc "Interactive CLI to manage GitHub repositories"
  homepage "https://github.com/wiiiimm/gh-manager-cli"
  url "https://registry.npmjs.org/gh-manager-cli/-/gh-manager-cli-1.31.0.tgz"
  sha256 "a8e74efd2041f7165c776b2ff9394cb74ff577b023a88f88b4e52667aca6fb6c"
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
