cask "terminal-workspace" do
  version "0.1.3"
  sha256 "a0ba36ddc7f6521cf001cacb1e27e18c287ee4027f36c16a9d449060b160f511"

  url "https://github.com/EvanAI0331/terminal-workspace/releases/download/v#{version}/Terminal.Workspace-#{version}-arm64.dmg"
  name "Terminal Workspace"
  desc "Cross-project multi-terminal workspace for local development stacks"
  homepage "https://github.com/EvanAI0331/terminal-workspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Terminal Workspace.app"

  zap trash: [
    "~/Library/Application Support/Terminal Workspace",
    "~/Library/Preferences/com.evanai0331.terminal-workspace.plist",
    "~/Library/Saved Application State/com.evanai0331.terminal-workspace.savedState",
  ]
end
