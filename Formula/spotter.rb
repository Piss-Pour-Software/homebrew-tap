class Spotter < Formula
  desc "Follow your own live recording from the terminal, and answer in it"
  homepage "https://spotter.pisspoursoftware.xyz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://spotter.pisspoursoftware.xyz/download/v0.1.1/spotter-0.1.1-darwin-arm64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.1.1/spotter-0.1.1-darwin-arm64.tar.xz"
      sha256 "84fbb5fa50edd7cb61cbb381efb7e7460f550054371e80afe3a68ad4a95c0c4d"
    end
    on_intel do
      url "https://spotter.pisspoursoftware.xyz/download/v0.1.1/spotter-0.1.1-darwin-x64.tar.xz"
      mirror "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.1.1/spotter-0.1.1-darwin-x64.tar.xz"
      sha256 "3088637439d0bd9e02a2edd1b8f24bd0bb9d06147a88b301405f585ca6f7339a"
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
