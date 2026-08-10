cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.28.0"
  sha256 arm:   "62b9706762de57f2d1c6b3660cab418f5d5e8ff0f133c111e6be7c9d157ed471",
         intel: "6ac0f13ae26f493a6af9bc637dc08ed5b6bd457018946b1fceb1d94dbb500572"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
