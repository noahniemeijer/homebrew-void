class Void < Formula
  desc "VOID Program"
  homepage "https://github.com/noahniemeijer/void"
  url "https://github.com/noahniemeijer/VOID/archive/refs/tags/BETA.tar.gz"
  version "BETA"
  sha256 "a932245a708b92482dd5849d116bb5387decca5c048a93d848155a02ecedceed"

  def install
    # Install both main.py and install.sh into libexec
    libexec.install "main.py"
    libexec.install "install.sh"
  
    # Create symlinks to main.py with python3 explicitly
    bin.write_exec_script "/opt/homebrew/bin/python3 #{libexec}/main.py"
    bin.write_exec_script libexec/"install.sh"
  end
  

  def caveats
    <<~EOS
      Run the app with:
        void

      Ensure ollama is installed and accessible in your path.
    EOS
  end
end
