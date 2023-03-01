# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Copywrite < Formula
  desc "copywrite -- utilities for managing copyright headers and license files for GitHub repos"
  homepage "https://github.com/hashicorp/copywrite"
  version "0.16.3"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.3/copywrite_0.16.3_darwin_arm64.tar.gz"
      sha256 "5f1bc3442ae88cdc4c7563332e43cec65774c7e50b788a2586491c0b2f1e4610"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.3/copywrite_0.16.3_darwin_x86_64.tar.gz"
      sha256 "5f92062bf3d227f35bed2756ed254c44d312f9c8242a4f2b708b262f2c2bb574"

      def install
        bin.install "copywrite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.3/copywrite_0.16.3_linux_x86_64.tar.gz"
      sha256 "8d8ece83413fac359271610385ccdb78c4cc2d28dd93ae1f1fd4333586f458b1"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.3/copywrite_0.16.3_linux_arm64.tar.gz"
      sha256 "5be6f939d80b0d288c43b4b8e3a7c9d726396155ea60da32035d1e0e63c17e56"

      def install
        bin.install "copywrite"
      end
    end
  end

  test do
    system "#{bin}/copywrite --version"
  end
end
