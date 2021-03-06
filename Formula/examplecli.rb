# This file was generated by GoReleaser. DO NOT EDIT.
class Examplecli < Formula
  desc "Example CLI"
  homepage "https://mia-platform.eu"
  version "0.0.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/thobianchi/examplectl/releases/download/0.0.4/examplecli_Darwin_x86_64.tar.gz"
    sha256 "8b6b014f0df96be1d12cf3aba2bb55963e074cdaa6d0926aadcbf23d5fa45231"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/thobianchi/examplectl/releases/download/0.0.4/examplecli_Linux_x86_64.tar.gz"
      sha256 "c7faa59c8ccccd0f1a87f51acb618066a7470028050788187fa9661c2f52a578"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/thobianchi/examplectl/releases/download/0.0.4/examplecli_Linux_arm64.tar.gz"
        sha256 "96bab56902794044d8961ee53a392eb49ecc97933d26fd8435a971f1c6667c83"
      else
      end
    end
  end

  def install
    bin.install "examplecli"
  end

  test do
    system "examplecli version"
  end
end
