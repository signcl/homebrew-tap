# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.9.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.9.2/bayes_darwin_amd64.zip"
    sha256 "9000a57fcad12ee7dce4fcbaec18375f76c87d10f546d7ab5f7393738e67559e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.9.2/bayes_darwin_arm64.zip"
    sha256 "bef27ec0d99b41fe8da5872d97551fd85b4061cf7b11ff29abdf81c7e3b3f310"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.9.2/bayes_linux_amd64.zip"
    sha256 "bbe16463b91fd3dec53435dcf5cad421510565a60974fcd322bfc6b06314781b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.9.2/bayes_linux_arm.zip"
    sha256 "22b5d020bcf8d8f9de70267651da405fcf85cc0114a0c453ef1c4c90dfd02437"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/signcl/bayes-releases/releases/download/v0.9.2/bayes_linux_arm64.zip"
    sha256 "a5b154de6ddcdb1335ac641a6f2e747a62192b4bb06a4cfc9328352ae4fb80f5"
  end

  def install
    bin.install "bayes"
  end

  test do
    system "#{bin}/bayes -v"
  end
end
