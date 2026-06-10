require "language/node"

class GhManagerCli < Formula
  desc "Interactive CLI to manage GitHub repositories"
  homepage "https://github.com/wiiiimm/gh-manager-cli"
  url "https://registry.npmjs.org/gh-manager-cli/-/gh-manager-cli-1.52.3.tgz"
  sha256 "112566929f32b242b4b6d47d82c16c2a9fb629ef009188f6a0b7cbf93885e306"
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
