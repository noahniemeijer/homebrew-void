class Void < Formula
  desc "VOID – A terminal AI interface"
  homepage "https://github.com/noahniemeijer/void"
  url "https://github.com/noahniemeijer/void/archive/refs/tags/VOID-BETA.tar.gz"
  version "VOID-BETA"
  sha256 "d8008b343d86cafdc7682abf644bddf657c44057024a931041330b0fea95f939"

  depends_on "python@3.12"

  def install
    bin.install "main.py" => "void"
  end

  def caveats
    <<~EOS
      Run the app with:
        void

      Ensure ollama is installed and accessible in your path.
    EOS
  end
end
