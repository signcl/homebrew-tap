# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.5.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.5.9/bayes_darwin_amd64.zip"
    sha256 "ebf6d62e19e309d93be74da57e47892a884e125a5d1d669a91505c27ac553067"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.5.9/bayes_linux_amd64.zip"
      sha256 "b63487e1d4c85712513e9e5fa0483be942c731e6002bf8e077363dd7e4b77a8d"
    end
  end

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
