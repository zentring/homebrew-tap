cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.33.0"
  sha256 arm:   "22f144e2c544c1d087da9bcba5809cb7667fa2c8032ffca4f6fee677472a57ec",
         intel: "0c0b22c1daf51743ed7a5b72be776adc8bc41d91b735bacadd508944e55418fb"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
