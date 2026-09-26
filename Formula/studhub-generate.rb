class StudhubGenerate < Formula
  desc "StudHub CLI tool: studhub-generate"
  homepage "https://github.com/MorningBlossom/studhub-cli"
  version "1.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-darwin-arm64"
    sha256 "f6fd6200ea9b6a632cac26a774e496a059ade91e891a94afd4663c9bd39abccb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-darwin-amd64"
    sha256 "e6092baae7091359c09e260dfa5cd098027fd59177087be72975df2a0499245a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-linux-arm64"
    sha256 "603ca58c0c5e4fec78a403c16567385d4cfb12de11beec42710871aa7db5ce30"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MorningBlossom/studhub-cli/releases/download/v1.0.4/studhub-generate-linux-amd64"
    sha256 "7493045212fa9a7d15fc639e0bd8631ca87d596327492dc6758fdf8919cfccc0"
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
