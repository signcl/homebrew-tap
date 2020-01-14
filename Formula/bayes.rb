# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.6.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.6.1/bayes_darwin_amd64.zip"
    sha256 "e36a2409aa5366d8a9b5a150fb6a95cffade196d253ef62ab25818771e27c17a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.6.1/bayes_linux_amd64.zip"
      sha256 "929e345af8fbe2aea36698cffd4435420169aa607084c89a447d82443255ad17"
    end
  end

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
