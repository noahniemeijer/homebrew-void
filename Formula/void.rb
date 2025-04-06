class Void < Formula
  desc "Void CLI Program"
  homepage "https://github.com/noahniemeijer/void"
  url "https://github.com/noahniemeijer/VOID/archive/refs/tags/BETA.tar.gz"
  sha256 "d8008b343d86cafdc7682abf644bddf657c44057024a931041330b0fea95f939"
  version "BETA"

  def install
    # Install the main.py script into libexec
    libexec.install "libexec/main.py"
    
    # Create a wrapper script for void in bin
    (bin/"void").write <<~EOS
      #!/bin/bash
      python3 #{libexec}/main.py "$@"
    EOS
  end

  test do
    system "#{bin}/void", "--help"
  end
end
