# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.2/bayes_darwin_arm64.zip"
      sha256 "c23e518a6883eb4a3209c7ad1f0de8b4b135ccbf06c5601d298d4eda84ad8ec8"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.2/bayes_darwin_amd64.zip"
      sha256 "0df92ef8762c9f5641f26d96d0ff56486e472d4e9cb518ba8f2b264c95fb7cec"

      def install
        bin.install "bayes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.2/bayes_linux_arm64.zip"
      sha256 "4a146be27e3cfbd6dbad32600fb7d58fdb526e9251eaa6f2ae5acab76ef23b23"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.2/bayes_linux_arm.zip"
      sha256 "ca0766f20cd1e95eda5ce87075d5612cd327f2b17d0b3e245381221266590f15"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.2/bayes_linux_amd64.zip"
      sha256 "b8767e14ecf1b0bac4d6af7f514265a844535089d3900b4faec51cac331598d2"

      def install
        bin.install "bayes"
      end
    end
  end

  test do
    system "#{bin}/bayes -v"
  end
end
