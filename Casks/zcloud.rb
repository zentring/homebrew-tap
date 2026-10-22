cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.35.0"
  sha256 arm:   "e0abaa85b2228f835dfa963b150b706bea17b5a22e16928b277d80e7a9121df2",
         intel: "57fc751fd8abe6e6db4b1d5ca57c6d7f84de9ab23ce554f2cef6fe45bb5ac42f"

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
