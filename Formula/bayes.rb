# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bayes < Formula
  desc "CLI command-line tools for OpenBayes console"
  homepage "https://openbayes.com"
  version "0.15.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.4/bayes_darwin_amd64.zip"
      sha256 "4cd5bd9937f2f1c5a42bfadbe09b46068b31a46992914c1811fd415ffd4d96d3"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.4/bayes_darwin_arm64.zip"
      sha256 "dab0e804bd3762083b7045ccf267cd4ba7c54abdf8653450b2e7e1f2bce02394"

      def install
        bin.install "bayes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.4/bayes_linux_amd64.zip"
      sha256 "0ffc5d5790abed3340c9fc4eb2cfa071e2e76d7404eaa133aebb6809ebbc189f"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.4/bayes_linux_arm.zip"
      sha256 "7ba0a19dae832a56886e3530eacf19f970903ce497604a9a75579612f0f37207"

      def install
        bin.install "bayes"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/signcl/bayes-releases/releases/download/v0.15.4/bayes_linux_arm64.zip"
      sha256 "55759bb4517fbf32feb233ad1e488eb1535ce47b63ab2b858b4b8456a11f7bd9"

      def install
        bin.install "bayes"
      end
    end
  end

  test do
    system "#{bin}/bayes -v"
  end
end
