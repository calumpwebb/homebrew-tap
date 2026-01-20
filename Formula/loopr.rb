class Loopr < Formula
  desc "Agentic loop tool for AI / Agentic development loops"
  homepage "https://theworkflowengine.com"
  version "0.2.6"

  on_intel do
    url "https://github.com/calumpwebb/loopr/releases/download/v#{version}/loopr-darwin-amd64"
    sha256 "d749ed2561d4351e551a98a5abd88ec35cae3f64030a3fa398a13511af73e65b"
  end

  on_arm do
    url "https://github.com/calumpwebb/loopr/releases/download/v#{version}/loopr-darwin-arm64"
    sha256 "ae8a3142460566794f25a7de3be2d770073d218d2bd4eed67bbb9ac68506e2cd"
  end

  def install
    bin.install "loopr-darwin-amd64" => "loopr" if Hardware::CPU.intel?
    bin.install "loopr-darwin-arm64" => "loopr" if Hardware::CPU.arm?
  end

  test do
    # Test that the binary runs
    assert_match "loopr", shell_output("#{bin}/loopr --version")
  end
end
