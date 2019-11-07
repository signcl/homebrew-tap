# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.5.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.5.7/bayes_darwin_amd64.zip"
    sha256 "397449438c584121c13feb83b567b52a1a09b722768244433cc75ded2e596196"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.5.7/bayes_linux_amd64.zip"
      sha256 "071c0711d9d825aab113f6a4896bc9cdf743153adafa6328a1f46cedcf140238"
    end
  end

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
