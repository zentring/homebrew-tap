cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.31.0"
  sha256 arm:   "3619ce36930e0f8ee9081996ca4b0f0ba5cc764e24bd7f3068ff6f6a04d7e2cf",
         intel: "8a04b9250766c55ced2588e4fee0350d43aee60544167225b85fa9d21a46bc05"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
