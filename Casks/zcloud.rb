cask "zcloud" do
  arch arm: "arm64", intel: "amd64"

  version "0.30.0"
  sha256 arm:   "4360ac9c66611eb31505968de8d8996aa627dcc3a81a18fdc86b4386767d1b43",
         intel: "4fa4e80c2b4f2b3f82bc8ee2f9d485ddb35c65c6b910a5261b0024b543cdb67f"

  url "https://github.com/zentring/zcloud/releases/download/v#{version}/zcloud-darwin-#{arch}",
      verified: "github.com/zentring/zcloud/"
  name "zcloud"
  desc "Command-line interface for Zentring Cloud"
  homepage "https://github.com/zentring/zcloud"

  depends_on :macos
  container type: :naked

  binary "zcloud-darwin-#{arch}", target: "zcloud"
end
