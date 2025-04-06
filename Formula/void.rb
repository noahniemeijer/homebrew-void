class Void < Formula
  desc "My Project Description"
  homepage "https://github.com/noahniemeijer/void"
  url "https://github.com/noahniemeijer/VOID/archive/refs/tags/BETA.tar.gz"
  version "BETA"
  sha256 "a932245a708b92482dd5849d116bb5387decca5c048a93d848155a02ecedceed"

  def install
    bin.install "main.py"
  end
end

  def caveats
    <<~EOS
      Run the app with:
        void

      Ensure ollama is installed and accessible in your path.
    EOS
  end
end
