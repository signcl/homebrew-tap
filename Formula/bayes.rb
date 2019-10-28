# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.5.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.5.5/bayes_darwin_amd64.zip"
    sha256 "521743d82a925bbed65a45b8631ab3f5fde14ca32f2e0ae8275e2819ef4f89d4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.5.5/bayes_linux_amd64.zip"
      sha256 "1fb119e621af054b73c4296d1487e5b49b747c60c395807117874bd29e40b2eb"
    end
  end

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
