class Spotter < Formula
  desc "Follow your own live recording from the terminal, and answer in it"
  homepage "https://spotter.pisspoursoftware.xyz"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://spotter.pisspoursoftware.xyz/download/v0.2.0/spotter-0.2.0-darwin-arm64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.2.0/spotter-0.2.0-darwin-arm64.tar.xz"
      sha256 "499fd5a3f2a324c4021c5351b36bf32e0905cfdbfe512fed4d22e9b1a28b8866"
    end
    on_intel do
      url "https://spotter.pisspoursoftware.xyz/download/v0.2.0/spotter-0.2.0-darwin-x64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.2.0/spotter-0.2.0-darwin-x64.tar.xz"
      sha256 "8b60249f8ae06aae7d1ae24f02cd8f5fd9d8ced16bb7a6ebb83a9f6a1f8ab98b"
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
