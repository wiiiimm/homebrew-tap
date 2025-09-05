require "language/node"

class GhManagerCli < Formula
  desc "Interactive CLI to manage GitHub repositories"
  homepage "https://github.com/wiiiimm/gh-manager-cli"
  url "https://registry.npmjs.org/gh-manager-cli/-/gh-manager-cli-1.24.3.tgz"
  sha256 "f966636ca785dcadffb689b606d9db455149dcc842bafc09787598fbc5295f6e"
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
