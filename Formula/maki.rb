class Maki < Formula
  desc "CLI for bootstrapping C++ projects with Clang, CMake, and Ninja"
  homepage "https://github.com/PixelBrewer/Maki"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/PixelBrewer/Maki/releases/download/v0.1.0/maki-v0.1.0-osx-arm64.tar.gz"
    sha256 "d58bbaf9a523e5dc2b319f39ed5a7580dc5b40dfae92beb7c82a46539c4a7ba5"
  else
    url "https://github.com/PixelBrewer/Maki/releases/download/v0.1.0/maki-v0.1.0-osx-x64.tar.gz"
    sha256 "bc74e29fb65d4c6ffa81f0c157fc6737a1c74f08e123b84355acc47a0b1d9e09"
  end

  def install
    bin.install "maki"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/maki --help")
  end
end
