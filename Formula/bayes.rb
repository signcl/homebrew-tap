# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.19.1/bayes_darwin_arm64.zip"
      sha256 "1df60bebedd66dbbfea5a8f6a74715eb3c0d84f38fc0a3b60eebd513dd119927"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.19.1/bayes_darwin_amd64.zip"
      sha256 "ace226fe236c8643c4d8a52a4acce805df38403201b773baf0e1a7ed125a3e6c"

      def install
        bin.install "bayes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.19.1/bayes_linux_arm.zip"
      sha256 "fced434d54668b696532b5266c41f85a0ee97c59889ab8e1d1d59261ec156030"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.19.1/bayes_linux_arm64.zip"
      sha256 "b100861d31f2de327118fa4f6ca655d84f7c7b00afb07f5b2a1f70e9db0be310"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.19.1/bayes_linux_amd64.zip"
      sha256 "9e58f08fd390c1fe6a1fe25d9de4a9a2bbb374fec4f86ddeeeffba4d8be0b0b1"

      def install
        bin.install "bayes"
      end
    end
  end

  test do
    system "#{bin}/bayes -v"
  end
end
