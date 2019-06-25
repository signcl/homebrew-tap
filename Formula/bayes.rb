# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  url "https://github.com/signcl/bayes-releases/releases/download/v0.4.0/bayes_darwin_amd64.zip"
  version "0.4.0"
  sha256 "5a176c18b57793da20a67e53b76bd48786a3ddb49f8a30d415450ffa88b82d6f"

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
