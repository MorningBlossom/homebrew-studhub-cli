class StudhubGenerate < Formula
  desc "StudHub CLI tool: studhub-generate"
  homepage "https://github.com/MorningBlossom/studhub-cli"
  version "v1.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.2/studhub-generate-darwin-arm64"
    sha256 "caea09aa57b41a56d968bf1ec3d21202724b44c0291ca66b274f7155f159e8f2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.2/studhub-generate-darwin-amd64"
    sha256 "7dbc70a35ba391703adac2a60b7dc5df531baeda2a450436ccffdecead273012"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.2/studhub-generate-linux-amd64"
    sha256 "e9972a54ee58526032916f61469e9a3670b62435610c832513b6e2139160ea4b"
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
