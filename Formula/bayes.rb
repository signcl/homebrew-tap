# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.14.1/bayes_darwin_arm64.zip"
      sha256 "d2a86b3ecbc12f5531f5535183a787d1846655623c1b3cc0cad7b63a0727afb4"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.14.1/bayes_darwin_amd64.zip"
      sha256 "991ff9336095215c71a81f4c7cf8b1ccaa42e7283c0c11e95bd3186bf1aa693b"

      def install
        bin.install "bayes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.14.1/bayes_linux_amd64.zip"
      sha256 "74cd0c9f54124ac7c6fd744b4a32d765c8e8c4d5cae57f525e4597e35e0521db"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.14.1/bayes_linux_arm64.zip"
      sha256 "dc9eb46e60aee4ac6a801aecb9d90c0f304a58a994eb3a970a6fdb1602276652"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.14.1/bayes_linux_arm.zip"
      sha256 "cedcfc44ceeebb14f7fef2926eea2bc2fd9a6c45e142f8cf3ae7548ddd42950a"

      def install
        bin.install "bayes"
      end
    end
  end

  test do
    system "#{bin}/bayes -v"
  end
end
