cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.34.0"
  sha256 arm:   "ed9bceb837380670d14a0640269ca67e3c8c2db7e7feec8863f9f02fc45fbf7f",
         intel: "6a592a45fcc1526411428b84c5407c08487a4fc48969a3778c725797b55e0ef4"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"

  caveats <<~EOS
    Welcome to Zentring Cloud!

    Get started:
      zcloud login
      zcloud whoami
      zcloud --help
  EOS
end
