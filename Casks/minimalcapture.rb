cask "minimalcapture" do
  version "1.0.2"
  sha256 "39c15109cc2ecd416518bc073f442d3f3b322b2f7b0d88a581bc435420300235"

  url "https://github.com/glennsheff/MinimalCapture/releases/download/v#{version}/MinimalCapture.zip"
  name "MinimalCapture"
  desc "Tiny menu bar screenshot tool"
  homepage "https://github.com/glennsheff/MinimalCapture"

  depends_on macos: :sonoma

  app "MinimalCapture.app"

  uninstall quit: "local.minimalcapture"

  zap trash: "~/Library/Preferences/local.minimalcapture.plist"
end
