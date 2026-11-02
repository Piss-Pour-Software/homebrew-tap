class Spotter < Formula
  desc "Follow your own live recording from the terminal, and answer in it"
  homepage "https://spotter.pisspoursoftware.xyz"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://spotter.pisspoursoftware.xyz/download/v0.1.2/spotter-0.1.2-darwin-arm64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.1.2/spotter-0.1.2-darwin-arm64.tar.xz"
      sha256 "630ab26f49b069e8190273b69e0ee3ba6f8fc7a9c40c86eee21417f199d8392e"
    end
    on_intel do
      url "https://spotter.pisspoursoftware.xyz/download/v0.1.2/spotter-0.1.2-darwin-x64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.1.2/spotter-0.1.2-darwin-x64.tar.xz"
      sha256 "ee2611e8d0caac64393fdbae45245a6a1c4a28e3c65633d0d9ca3637169dca0e"
    end
  end

  def install
    bin.install "spotter"
  end

  def caveats
    <<~EOS
      spotter follows what Vakyume records on your iPhone.
      If Vakyume is not on your phone yet: https://testflight.apple.com/join/nUxAwCM6
      On your Home Screen it is called Scribe for now.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spotter --version")
  end
end
