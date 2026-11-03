class Spotter < Formula
  desc "Follow your own live recording from the terminal, and answer in it"
  homepage "https://spotter.pisspoursoftware.xyz"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://spotter.pisspoursoftware.xyz/download/v0.2.2/spotter-0.2.2-darwin-arm64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.2.2/spotter-0.2.2-darwin-arm64.tar.xz"
      sha256 "a66e7bf2ed7f4b5bb0a21ac30e7e70a3a3517fff1dddf4e10838dba816f4b901"
    end
    on_intel do
      url "https://spotter.pisspoursoftware.xyz/download/v0.2.2/spotter-0.2.2-darwin-x64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.2.2/spotter-0.2.2-darwin-x64.tar.xz"
      sha256 "b7cfd894337b81578b332af52139a91bae7d907dd3c412ebd392891a591cf82b"
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
      Then run: spotter setup
      Before brew uninstall, spotter models remove takes the speech models off this Mac.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spotter --version")
  end
end
