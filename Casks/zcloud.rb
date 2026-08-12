cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.32.0"
  sha256 arm:   "721bf0971e0b77aa1d46dfd36832b17015a94b28d5a9ed2ed3b250f6574ab768",
         intel: "48bb38416190a83c8763eb8665d18cfa3051420bbdb6d143db86df92e28b66f1"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
