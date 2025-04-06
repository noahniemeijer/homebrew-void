class Void < Formula
  desc "VOID Program"
  homepage "https://github.com/noahniemeijer/void"
  url "https://github.com/noahniemeijer/VOID/archive/refs/tags/BETA.tar.gz"
  version "BETA"
  sha256 "a932245a708b92482dd5849d116bb5387decca5c048a93d848155a02ecedceed"

  def install
    # Install the main.py file into libexec
    libexec.install "main.py"
    
    # Create a symlink to main.py in /usr/local/bin, so it's accessible as 'void'
    bin.write_exec_script libexec/"main.py"
  end

  def caveats
    <<~EOS
      Run the app with:
        void

      Ensure ollama is installed and accessible in your path.
    EOS
  end
end
