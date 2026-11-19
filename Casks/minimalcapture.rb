cask "minimalcapture" do
  version "1.0.1"
  sha256 "3bc903b18069de8e77244a2696d2fd164c9a9793ac28c1b72dd38191c487b2ee"

  url "https://github.com/glennsheff/MinimalCapture/releases/download/v#{version}/MinimalCapture.zip"
  name "MinimalCapture"
  desc "Tiny menu bar screenshot tool"
  homepage "https://github.com/glennsheff/MinimalCapture"

  depends_on macos: ">= :sonoma"

  app "MinimalCapture.app"

  uninstall quit: "local.minimalcapture"

  zap trash: "~/Library/Preferences/local.minimalcapture.plist"
end
