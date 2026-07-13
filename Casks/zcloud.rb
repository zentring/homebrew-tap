cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.26.0"
  sha256 arm:   "1f2063188bc7e24ad6f40648f53327bf53c8dc0c51e88305ae3d5d8b3d2f554c",
         intel: "ec55a0f73b1627c1b98d558813ff400dd3605105c4aa6faaab264bc21dc8efb9"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
