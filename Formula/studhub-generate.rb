class StudhubGenerate < Formula
  desc "StudHub CLI tool: studhub-generate"
  homepage "https://github.com/MorningBlossom/studhub-cli"
  version "v1.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.3/studhub-generate-darwin-arm64"
    sha256 "612ffef10d2baddfa75b715dc970b1a50e505ff9a91133405fc508f7384e73a5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.3/studhub-generate-darwin-amd64"
    sha256 "54d6455a354369ff70fd653cb767b21c82e65df8575314c3a54575c27febd705"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.3/studhub-generate-linux-amd64"
    sha256 "afbf67850cb527a0d2a9652c2f9b5a5de38a44ee840cfe9e461136a55f88daae"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "studhub-generate-darwin-arm64" => "studhub-generate"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "studhub-generate-darwin-amd64" => "studhub-generate"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "studhub-generate-linux-amd64" => "studhub-generate"
    end
  end
end
