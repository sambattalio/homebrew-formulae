class ChadStride < Formula
  desc "A small curses program to stride across your terminal"
  homepage ""
  url "https://github.com/sambattalio/chad_stride/archive/0.69420.tar.gz"
  sha256 "7b8995f2cf75a4211eae61dcee2e2691b8a68cc2ed573e35c798672d33a30432"

  def install
    system "make"
    bin.install "chad_stride"
    system "ln", "-s", "#{bin}/chad_stride", "#{bin}/cs"
  end

  test do
    system "#{bin}/cs"
  end
end
