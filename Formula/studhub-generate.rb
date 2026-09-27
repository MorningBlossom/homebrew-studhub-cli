class StudhubGenerate < Formula
  desc "StudHub CLI tool: studhub-generate"
  homepage "https://github.com/MorningBlossom/studhub-cli"
  version "1.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.5/studhub-generate-darwin-arm64"
    sha256 "e39cffd8164d043011e8f0033566aea068ebe42dd68db25b0cf9addf90fb2a32"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.5/studhub-generate-darwin-amd64"
    sha256 "603c93adc4ad852560e8dd3f3f440d259ecb18656eb4e635cb6bc78ef206af3f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.5/studhub-generate-linux-arm64"
    sha256 "2f2dc5a083eefb89f75d721d18b2dbca335a5c1f02f41a2e28e107112b3d1619"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.5/studhub-generate-linux-amd64"
    sha256 "50c7da426bdcefcd28605e2284a93511060562f6bd711c147c9faf33e833aeba"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "studhub-generate-darwin-arm64" => "studhub-generate"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "studhub-generate-darwin-amd64" => "studhub-generate"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "studhub-generate-linux-arm64" => "studhub-generate"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "studhub-generate-linux-amd64" => "studhub-generate"
    end
  end

  test do
    assert_predicate bin/"studhub-generate", :exist?
  end
end
