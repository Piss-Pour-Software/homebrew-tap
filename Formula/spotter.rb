class Spotter < Formula
  desc "Follow your own live recording from the terminal, and answer in it"
  homepage "https://spotter.pisspoursoftware.xyz"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.1.0/spotter-0.1.0-darwin-arm64.tar.gz"
      sha256 "dc4cbc8893a48a69eb30a05c20f8b55eddfdff9c2abe91139417e16e38396e21"
    end
    on_intel do
      url "https://github.com/Piss-Pour-Software/spotter/releases/download/v0.1.0/spotter-0.1.0-darwin-x64.tar.gz"
      sha256 "27311580b4655584b453c350cb06dc397fd4483c000f08564410be0d44dcc044"
    end
  end

  def install
    bin.install "spotter"
  end

  def caveats
    <<~EOS
      spotter follows what Vakyume records on your iPhone.
      If Vakyume is not on your phone yet: https://testflight.apple.com/join/nUxAwCM6
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spotter --version")
  end
end
