class Spotter < Formula
  desc "Follow your own live recording from the terminal, and answer in it"
  homepage "https://spotter.pisspoursoftware.xyz"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://spotter.pisspoursoftware.xyz/download/v0.2.1/spotter-0.2.1-darwin-arm64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.2.1/spotter-0.2.1-darwin-arm64.tar.xz"
      sha256 "c332388627a287cd64e4c3d857af12268a37d688e05c2b733090c16eff491bca"
    end
    on_intel do
      url "https://spotter.pisspoursoftware.xyz/download/v0.2.1/spotter-0.2.1-darwin-x64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.2.1/spotter-0.2.1-darwin-x64.tar.xz"
      sha256 "cdeeaa3e8bc37dd4d6e5fce061d1af4999d3fa81df69c45d1b319ba0a0c2e79d"
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
