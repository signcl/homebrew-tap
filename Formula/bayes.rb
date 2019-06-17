# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  url "https://github.com/signcl/bayes-releases/releases/download/v0.3.7/bayes_darwin_amd64.zip"
  version "0.3.7"
  sha256 "587122ffdf4507fd560218579d153eaa38fcbe0855ebae69ba93c1945de0fd73"

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
