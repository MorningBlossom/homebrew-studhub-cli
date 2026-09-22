class StudhubGenerate < Formula
  desc "StudHub CLI tool: studhub-generate"
  homepage "https://github.com/MorningBlossom/studhub-cli"
  version "v1.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-darwin-arm64"
    sha256 "742daf2ee53fd2d45921557f387ea9bc9dccb4480b5ada2cac2d97f37a781dd3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-darwin-amd64"
    sha256 "e73e9a2a1199b52110c8f44b23a10b2cd4b32b882ba7ae941a95cdef51b7f7da"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-linux-amd64"
    sha256 "fd632e86fd2fc3f72a6e88e05cdb82adf2b9a58a79a25cd67b62d3fee164be2e"
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
