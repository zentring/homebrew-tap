cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.29.0"
  sha256 arm:   "b2e940b38c2548c992336432dc3fd7e7131cefe3ced72a188cf808e475316d3c",
         intel: "c1173cec1c871d3a60890cd3db35eac82176e1d754ec7cdcbef90e541a0b6c41"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
