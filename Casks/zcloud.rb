cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.27.0"
  sha256 arm:   "ef59d98139f6194105887a4833651f3ec2a369baec8f84d49e0181b99b9df5c6",
         intel: "40d2e8ce55174cda953aacdcbe6da14b6a01eed80ae40aeee1eeba1ddc840fb3"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
