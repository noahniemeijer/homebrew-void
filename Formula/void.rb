class Void < Formula
    desc "Terminal-based AI chat tool"
    homepage "https://github.com/noahniemeijer/void"
    url "https://github.com/noahniemeijer/void/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "PUT_YOUR_TARBALL_SHA256_HERE"
    license "MIT"
  
    depends_on "python@3.12"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink libexec/"void"
    end
  end
  